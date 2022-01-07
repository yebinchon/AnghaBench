
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_bios {char* data; int size; } ;
struct methods {char* member_0; int member_2; char* desc; int score; int rw; char* data; int size; int (* shadow ) (struct nouveau_bios*) ;int * member_5; int member_4; int member_3; int member_1; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {TYPE_1__* pdev; int cfgopt; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmemdup (int ,int ,int ) ;
 char* kstrndup (char const*,int,int ) ;
 int nouveau_bios_score (struct nouveau_bios*,int) ;
 int nouveau_bios_shadow_acpi ;
 int nouveau_bios_shadow_of ;
 int nouveau_bios_shadow_pci ;
 int nouveau_bios_shadow_pramin ;
 int nouveau_bios_shadow_prom ;
 char* nouveau_stropt (int ,char*,int*) ;
 TYPE_2__* nv_device (struct nouveau_bios*) ;
 int nv_error (struct nouveau_bios*,char*,...) ;
 int nv_info (struct nouveau_bios*,char*,char*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int stub1 (struct nouveau_bios*) ;
 int stub2 (struct nouveau_bios*) ;

__attribute__((used)) static int
nouveau_bios_shadow(struct nouveau_bios *bios)
{
 struct methods shadow_methods[] = {



  { "PRAMIN", nouveau_bios_shadow_pramin, 1, 0, 0, ((void*)0) },
  { "PROM", nouveau_bios_shadow_prom, 0, 0, 0, ((void*)0) },
  { "ACPI", nouveau_bios_shadow_acpi, 1, 0, 0, ((void*)0) },
  { "PCIROM", nouveau_bios_shadow_pci, 1, 0, 0, ((void*)0) },
  {}
 };
 struct methods *mthd, *best;
 const struct firmware *fw;
 const char *optarg;
 int optlen, ret;
 char *source;

 optarg = nouveau_stropt(nv_device(bios)->cfgopt, "NvBios", &optlen);
 source = optarg ? kstrndup(optarg, optlen, GFP_KERNEL) : ((void*)0);
 if (source) {

  mthd = shadow_methods;
  do {
   if (strcasecmp(source, mthd->desc))
    continue;
   nv_info(bios, "source: %s\n", mthd->desc);

   mthd->shadow(bios);
   mthd->score = nouveau_bios_score(bios, mthd->rw);
   if (mthd->score) {
    kfree(source);
    return 0;
   }
  } while ((++mthd)->shadow);


  ret = request_firmware(&fw, source, &nv_device(bios)->pdev->dev);
  if (ret == 0) {
   bios->size = fw->size;
   bios->data = kmemdup(fw->data, fw->size, GFP_KERNEL);
   release_firmware(fw);

   nv_info(bios, "image: %s\n", source);
   if (nouveau_bios_score(bios, 1)) {
    kfree(source);
    return 0;
   }

   kfree(bios->data);
   bios->data = ((void*)0);
  }

  nv_error(bios, "source \'%s\' invalid\n", source);
  kfree(source);
 }

 mthd = shadow_methods;
 do {
  nv_info(bios, "checking %s for image...\n", mthd->desc);
  mthd->shadow(bios);
  mthd->score = nouveau_bios_score(bios, mthd->rw);
  mthd->size = bios->size;
  mthd->data = bios->data;
  bios->data = ((void*)0);
 } while (mthd->score != 3 && (++mthd)->shadow);

 mthd = shadow_methods;
 best = mthd;
 do {
  if (mthd->score > best->score) {
   kfree(best->data);
   best = mthd;
  }
 } while ((++mthd)->shadow);

 if (best->score) {
  nv_info(bios, "using image from %s\n", best->desc);
  bios->size = best->size;
  bios->data = best->data;
  return 0;
 }

 nv_error(bios, "unable to locate usable image\n");
 return -EINVAL;
}
