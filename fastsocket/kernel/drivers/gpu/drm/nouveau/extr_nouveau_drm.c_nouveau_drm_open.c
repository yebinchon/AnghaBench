
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_6__ {int mutex; } ;
struct nouveau_drm {TYPE_2__ client; int clients; int device; } ;
struct TYPE_5__ {int vm; } ;
struct nouveau_cli {int head; TYPE_1__ base; } ;
struct drm_file {int pid; struct nouveau_cli* driver_priv; } ;
struct drm_device {struct pci_dev* pdev; } ;
typedef int name ;
struct TYPE_7__ {scalar_t__ card_type; } ;


 scalar_t__ NV_50 ;
 int TASK_COMM_LEN ;
 int current ;
 int get_task_comm (char*,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_cli_create (struct pci_dev*,char*,int,void**) ;
 int nouveau_cli_destroy (struct nouveau_cli*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_vm_new (TYPE_3__*,int ,unsigned long long,int,int *) ;
 TYPE_3__* nv_device (int ) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int
nouveau_drm_open(struct drm_device *dev, struct drm_file *fpriv)
{
 struct pci_dev *pdev = dev->pdev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_cli *cli;
 char name[32], tmpname[TASK_COMM_LEN];
 int ret;

 get_task_comm(tmpname, current);
 snprintf(name, sizeof(name), "%s[%d]", tmpname, fpriv->pid);

 ret = nouveau_cli_create(pdev, name, sizeof(*cli), (void **)&cli);
 if (ret)
  return ret;

 if (nv_device(drm->device)->card_type >= NV_50) {
  ret = nouveau_vm_new(nv_device(drm->device), 0, (1ULL << 40),
         0x1000, &cli->base.vm);
  if (ret) {
   nouveau_cli_destroy(cli);
   return ret;
  }
 }

 fpriv->driver_priv = cli;

 mutex_lock(&drm->client.mutex);
 list_add(&cli->head, &drm->clients);
 mutex_unlock(&drm->client.mutex);
 return 0;
}
