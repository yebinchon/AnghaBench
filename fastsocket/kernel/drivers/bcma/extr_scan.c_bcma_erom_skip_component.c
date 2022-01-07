
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_bus {int dummy; } ;


 int SCAN_ER_TAG ;
 int SCAN_ER_TAG_CI ;
 int SCAN_ER_TAG_END ;
 int SCAN_ER_VALID ;
 int bcma_erom_get_ent (struct bcma_bus*,int**) ;
 int bcma_erom_push_ent (int**) ;

__attribute__((used)) static void bcma_erom_skip_component(struct bcma_bus *bus, u32 **eromptr)
{
 u32 ent;
 while (1) {
  ent = bcma_erom_get_ent(bus, eromptr);
  if ((ent & SCAN_ER_VALID) &&
      ((ent & SCAN_ER_TAG) == SCAN_ER_TAG_CI))
   break;
  if (ent == (SCAN_ER_TAG_END | SCAN_ER_VALID))
   break;
 }
 bcma_erom_push_ent(eromptr);
}
