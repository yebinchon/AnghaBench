
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {int dma_cmd_bus; int dma_cmd_space; int dma_cmd_size; int dma; int mesh; int meshintr; struct Scsi_Host* host; } ;
struct macio_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int free_irq (int ,struct mesh_state*) ;
 int iounmap (int ) ;
 scalar_t__ macio_get_drvdata (struct macio_dev*) ;
 int macio_get_pci_dev (struct macio_dev*) ;
 int macio_release_resources (struct macio_dev*) ;
 int mesh_shutdown (struct macio_dev*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int set_mesh_power (struct mesh_state*,int ) ;

__attribute__((used)) static int mesh_remove(struct macio_dev *mdev)
{
 struct mesh_state *ms = (struct mesh_state *)macio_get_drvdata(mdev);
 struct Scsi_Host *mesh_host = ms->host;

 scsi_remove_host(mesh_host);

 free_irq(ms->meshintr, ms);


 mesh_shutdown(mdev);


 set_mesh_power(ms, 0);


 iounmap(ms->mesh);
        iounmap(ms->dma);


 pci_free_consistent(macio_get_pci_dev(mdev), ms->dma_cmd_size,
       ms->dma_cmd_space, ms->dma_cmd_bus);


 macio_release_resources(mdev);

 scsi_host_put(mesh_host);

 return 0;
}
