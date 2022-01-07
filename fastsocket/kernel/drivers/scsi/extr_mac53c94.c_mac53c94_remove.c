
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_dev {int dummy; } ;
struct fsc_state {int dma_cmd_space; scalar_t__ dma; scalar_t__ regs; int intr; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;


 int free_irq (int ,struct fsc_state*) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 scalar_t__ macio_get_drvdata (struct macio_dev*) ;
 int macio_release_resources (struct macio_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static int mac53c94_remove(struct macio_dev *mdev)
{
 struct fsc_state *fp = (struct fsc_state *)macio_get_drvdata(mdev);
 struct Scsi_Host *host = fp->host;

 scsi_remove_host(host);

 free_irq(fp->intr, fp);

 if (fp->regs)
  iounmap(fp->regs);
 if (fp->dma)
  iounmap(fp->dma);
 kfree(fp->dma_cmd_space);

 scsi_host_put(host);

 macio_release_resources(mdev);

 return 0;
}
