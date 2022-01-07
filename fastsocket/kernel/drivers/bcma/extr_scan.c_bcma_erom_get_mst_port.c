
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_bus {int dummy; } ;
typedef int s32 ;


 int ENOENT ;
 int SCAN_ER_TAG ;
 int SCAN_ER_TAG_MP ;
 int SCAN_ER_VALID ;
 int bcma_erom_get_ent (struct bcma_bus*,int**) ;

__attribute__((used)) static s32 bcma_erom_get_mst_port(struct bcma_bus *bus, u32 **eromptr)
{
 u32 ent = bcma_erom_get_ent(bus, eromptr);
 if (!(ent & SCAN_ER_VALID))
  return -ENOENT;
 if ((ent & SCAN_ER_TAG) != SCAN_ER_TAG_MP)
  return -ENOENT;
 return ent;
}
