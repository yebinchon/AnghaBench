
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_2__ {void* output1_script_ptr; void* output0_script_ptr; } ;
struct nvbios {int* data; TYPE_1__ tmds; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int length; size_t offset; } ;


 int EINVAL ;
 int ENOSYS ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 int NV_INFO (struct nouveau_drm*,char*,int,int) ;
 int NV_WARN (struct nouveau_drm*,char*) ;
 void* ROM16 (int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static int parse_bit_tmds_tbl_entry(struct drm_device *dev, struct nvbios *bios, struct bit_entry *bitentry)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 uint16_t tmdstableptr, script1, script2;

 if (bitentry->length != 2) {
  NV_ERROR(drm, "Do not understand BIT TMDS table\n");
  return -EINVAL;
 }

 tmdstableptr = ROM16(bios->data[bitentry->offset]);
 if (!tmdstableptr) {
  NV_ERROR(drm, "Pointer to TMDS table invalid\n");
  return -EINVAL;
 }

 NV_INFO(drm, "TMDS table version %d.%d\n",
  bios->data[tmdstableptr] >> 4, bios->data[tmdstableptr] & 0xf);


 if (bios->data[tmdstableptr] != 0x11)
  return -ENOSYS;





 script1 = ROM16(bios->data[tmdstableptr + 7]);
 script2 = ROM16(bios->data[tmdstableptr + 9]);
 if (bios->data[script1] != 'q' || bios->data[script2] != 'q')
  NV_WARN(drm, "TMDS table script pointers not stubbed\n");

 bios->tmds.output0_script_ptr = ROM16(bios->data[tmdstableptr + 11]);
 bios->tmds.output1_script_ptr = ROM16(bios->data[tmdstableptr + 13]);

 return 0;
}
