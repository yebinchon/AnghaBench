
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_drm {int dummy; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_channel {int dummy; } ;


 int NV_DEBUG (struct nouveau_cli*,char*,int) ;
 int NV_ERROR (struct nouveau_cli*,char*,int) ;
 int nouveau_channel_del (struct nouveau_channel**) ;
 int nouveau_channel_dma (struct nouveau_drm*,struct nouveau_cli*,int ,int ,struct nouveau_channel**) ;
 int nouveau_channel_ind (struct nouveau_drm*,struct nouveau_cli*,int ,int ,int ,struct nouveau_channel**) ;
 int nouveau_channel_init (struct nouveau_channel*,int ,int ) ;

int
nouveau_channel_new(struct nouveau_drm *drm, struct nouveau_cli *cli,
      u32 parent, u32 handle, u32 arg0, u32 arg1,
      struct nouveau_channel **pchan)
{
 int ret;

 ret = nouveau_channel_ind(drm, cli, parent, handle, arg0, pchan);
 if (ret) {
  NV_DEBUG(cli, "ib channel create, %d\n", ret);
  ret = nouveau_channel_dma(drm, cli, parent, handle, pchan);
  if (ret) {
   NV_DEBUG(cli, "dma channel create, %d\n", ret);
   return ret;
  }
 }

 ret = nouveau_channel_init(*pchan, arg0, arg1);
 if (ret) {
  NV_ERROR(cli, "channel failed to initialise, %d\n", ret);
  nouveau_channel_del(pchan);
  return ret;
 }

 return 0;
}
