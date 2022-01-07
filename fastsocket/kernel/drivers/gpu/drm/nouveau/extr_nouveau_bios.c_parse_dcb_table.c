
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dcb_table {int version; int entries; } ;
struct nvbios {scalar_t__ type; struct dcb_table dcb; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ NVBIOS_BMP ;
 int NV_INFO (struct nouveau_drm*,char*,int,...) ;
 int ROM16 (int) ;
 int ROM32 (int) ;
 int dcb_fake_connectors (struct nvbios*) ;
 int fabricate_dcb_encoder_table (struct drm_device*,struct nvbios*) ;
 int merge_like_dcb_entries (struct drm_device*,struct dcb_table*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int* olddcb_conn (struct drm_device*,int) ;
 int* olddcb_conntab (struct drm_device*) ;
 int olddcb_outp_foreach (struct drm_device*,int *,int ) ;
 int* olddcb_table (struct drm_device*) ;
 int parse_dcb_entry ;
 int pr_cont (char*,int ) ;

__attribute__((used)) static int
parse_dcb_table(struct drm_device *dev, struct nvbios *bios)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct dcb_table *dcb = &bios->dcb;
 u8 *dcbt, *conn;
 int idx;

 dcbt = olddcb_table(dev);
 if (!dcbt) {

  if (bios->type == NVBIOS_BMP) {
   fabricate_dcb_encoder_table(dev, bios);
   return 0;
  }

  return -EINVAL;
 }

 NV_INFO(drm, "DCB version %d.%d\n", dcbt[0] >> 4, dcbt[0] & 0xf);

 dcb->version = dcbt[0];
 olddcb_outp_foreach(dev, ((void*)0), parse_dcb_entry);





 if (dcb->version < 0x21)
  merge_like_dcb_entries(dev, dcb);

 if (!dcb->entries)
  return -ENXIO;


 idx = -1;
 while ((conn = olddcb_conn(dev, ++idx))) {
  if (conn[0] != 0xff) {
   NV_INFO(drm, "DCB conn %02d: ", idx);
   if (olddcb_conntab(dev)[3] < 4)
    pr_cont("%04x\n", ROM16(conn[0]));
   else
    pr_cont("%08x\n", ROM32(conn[0]));
  }
 }
 dcb_fake_connectors(bios);
 return 0;
}
