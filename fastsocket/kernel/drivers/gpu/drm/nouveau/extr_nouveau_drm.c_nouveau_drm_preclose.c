
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct nouveau_cli {int head; scalar_t__ abi16; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_abi16_fini (scalar_t__) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static void
nouveau_drm_preclose(struct drm_device *dev, struct drm_file *fpriv)
{
 struct nouveau_cli *cli = nouveau_cli(fpriv);
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (cli->abi16)
  nouveau_abi16_fini(cli->abi16);

 mutex_lock(&drm->client.mutex);
 list_del(&cli->head);
 mutex_unlock(&drm->client.mutex);
}
