
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;


 scalar_t__ BCMA_CHIP_ID_BCM4706 ;
 int BCMA_CORE_4706_CHIPCOMMON ;
 int BCMA_CORE_CHIPCOMMON ;

__attribute__((used)) static u16 bcma_cc_core_id(struct bcma_bus *bus)
{
 if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4706)
  return BCMA_CORE_4706_CHIPCOMMON;
 return BCMA_CORE_CHIPCOMMON;
}
