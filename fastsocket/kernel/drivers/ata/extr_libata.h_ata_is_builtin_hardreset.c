
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ata_reset_fn_t ;


 scalar_t__ sata_sff_hardreset ;
 scalar_t__ sata_std_hardreset ;

__attribute__((used)) static inline int ata_is_builtin_hardreset(ata_reset_fn_t reset)
{
 if (reset == sata_std_hardreset)
  return 1;




 return 0;
}
