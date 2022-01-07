
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bcma_bus {int dummy; } ;
typedef int s32 ;


 int EINVAL ;
 int SCAN_ADDR_ADDR ;
 int SCAN_ADDR_AG32 ;
 int SCAN_ADDR_PORT ;
 int SCAN_ADDR_PORT_SHIFT ;
 int SCAN_ADDR_SZ ;
 int SCAN_ADDR_SZ_BASE ;
 int SCAN_ADDR_SZ_SHIFT ;
 int SCAN_ADDR_SZ_SZD ;
 int SCAN_ADDR_TYPE ;
 int SCAN_ER_TAGX ;
 int SCAN_ER_TAG_ADDR ;
 int SCAN_ER_VALID ;
 int SCAN_SIZE_SG32 ;
 int SCAN_SIZE_SZ ;
 int bcma_erom_get_ent (struct bcma_bus*,int**) ;
 int bcma_erom_push_ent (int**) ;

__attribute__((used)) static s32 bcma_erom_get_addr_desc(struct bcma_bus *bus, u32 **eromptr,
      u32 type, u8 port)
{
 u32 addrl, addrh, sizel, sizeh = 0;
 u32 size;

 u32 ent = bcma_erom_get_ent(bus, eromptr);
 if ((!(ent & SCAN_ER_VALID)) ||
     ((ent & SCAN_ER_TAGX) != SCAN_ER_TAG_ADDR) ||
     ((ent & SCAN_ADDR_TYPE) != type) ||
     (((ent & SCAN_ADDR_PORT) >> SCAN_ADDR_PORT_SHIFT) != port)) {
  bcma_erom_push_ent(eromptr);
  return -EINVAL;
 }

 addrl = ent & SCAN_ADDR_ADDR;
 if (ent & SCAN_ADDR_AG32)
  addrh = bcma_erom_get_ent(bus, eromptr);
 else
  addrh = 0;

 if ((ent & SCAN_ADDR_SZ) == SCAN_ADDR_SZ_SZD) {
  size = bcma_erom_get_ent(bus, eromptr);
  sizel = size & SCAN_SIZE_SZ;
  if (size & SCAN_SIZE_SG32)
   sizeh = bcma_erom_get_ent(bus, eromptr);
 } else
  sizel = SCAN_ADDR_SZ_BASE <<
    ((ent & SCAN_ADDR_SZ) >> SCAN_ADDR_SZ_SHIFT);

 return addrl;
}
