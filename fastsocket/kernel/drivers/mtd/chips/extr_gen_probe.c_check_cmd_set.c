
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
typedef int __u16 ;
struct TYPE_2__ {int P_ID; int A_ID; } ;


 int P_ID_NONE ;
 int P_ID_RESERVED ;
 struct mtd_info* cfi_cmdset_0001 (struct map_info*,int) ;
 struct mtd_info* cfi_cmdset_0002 (struct map_info*,int) ;
 struct mtd_info* cfi_cmdset_0020 (struct map_info*,int) ;
 struct mtd_info* cfi_cmdset_unknown (struct map_info*,int) ;

__attribute__((used)) static struct mtd_info *check_cmd_set(struct map_info *map, int primary)
{
 struct cfi_private *cfi = map->fldrv_priv;
 __u16 type = primary?cfi->cfiq->P_ID:cfi->cfiq->A_ID;

 if (type == P_ID_NONE || type == P_ID_RESERVED)
  return ((void*)0);

 switch(type){
 default:
  return cfi_cmdset_unknown(map, primary);
 }
}
