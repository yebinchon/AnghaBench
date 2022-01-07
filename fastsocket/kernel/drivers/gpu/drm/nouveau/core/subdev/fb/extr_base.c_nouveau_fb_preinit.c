
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init ) (struct nouveau_fb*) ;int size; size_t type; } ;
struct nouveau_fb {TYPE_1__ ram; int tags; int vram; } ;


 int ERANGE ;
 int nouveau_mm_init (int *,int ,int,int) ;
 int nouveau_mm_initialised (int *) ;
 int nv_fatal (struct nouveau_fb*,char*) ;
 int nv_info (struct nouveau_fb*,char*,...) ;
 int stub1 (struct nouveau_fb*) ;

int
nouveau_fb_preinit(struct nouveau_fb *pfb)
{
 static const char *name[] = {
  [128] = "unknown",
  [129 ] = "stolen system memory",
  [130 ] = "SGRAM",
  [131 ] = "SDRAM",
  [138 ] = "DDR1",
  [137 ] = "DDR2",
  [136 ] = "DDR3",
  [135 ] = "GDDR2",
  [134 ] = "GDDR3",
  [133 ] = "GDDR4",
  [132 ] = "GDDR5",
 };
 int ret, tags;

 tags = pfb->ram.init(pfb);
 if (tags < 0 || !pfb->ram.size) {
  nv_fatal(pfb, "error detecting memory configuration!!\n");
  return (tags < 0) ? tags : -ERANGE;
 }

 if (!nouveau_mm_initialised(&pfb->vram)) {
  ret = nouveau_mm_init(&pfb->vram, 0, pfb->ram.size >> 12, 1);
  if (ret)
   return ret;
 }

 if (!nouveau_mm_initialised(&pfb->tags)) {
  ret = nouveau_mm_init(&pfb->tags, 0, tags ? ++tags : 0, 1);
  if (ret)
   return ret;
 }

 nv_info(pfb, "RAM type: %s\n", name[pfb->ram.type]);
 nv_info(pfb, "RAM size: %d MiB\n", (int)(pfb->ram.size >> 20));
 nv_info(pfb, "   ZCOMP: %d tags\n", tags);
 return 0;
}
