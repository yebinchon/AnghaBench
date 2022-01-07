
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvc0_graph_priv {int dummy; } ;
struct nvc0_graph_fuc {int * data; int size; } ;
struct nouveau_device {int chipset; TYPE_1__* pdev; } ;
struct firmware {int data; int size; } ;
typedef int f ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmemdup (int ,int ,int ) ;
 struct nouveau_device* nv_device (struct nvc0_graph_priv*) ;
 int nv_error (struct nvc0_graph_priv*,char*,char const*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int snprintf (char*,int,char*,...) ;

int
nvc0_graph_ctor_fw(struct nvc0_graph_priv *priv, const char *fwname,
     struct nvc0_graph_fuc *fuc)
{
 struct nouveau_device *device = nv_device(priv);
 const struct firmware *fw;
 char f[32];
 int ret;

 snprintf(f, sizeof(f), "nouveau/nv%02x_%s", device->chipset, fwname);
 ret = request_firmware(&fw, f, &device->pdev->dev);
 if (ret) {
  snprintf(f, sizeof(f), "nouveau/%s", fwname);
  ret = request_firmware(&fw, f, &device->pdev->dev);
  if (ret) {
   nv_error(priv, "failed to load %s\n", fwname);
   return ret;
  }
 }

 fuc->size = fw->size;
 fuc->data = kmemdup(fw->data, fuc->size, GFP_KERNEL);
 release_firmware(fw);
 return (fuc->data != ((void*)0)) ? 0 : -ENOMEM;
}
