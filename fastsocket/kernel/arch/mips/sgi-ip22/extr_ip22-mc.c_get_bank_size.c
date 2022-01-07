
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int systemid; } ;


 unsigned int SGIMC_MCONFIG_RMASK ;
 int SGIMC_SYSID_MASKREV ;
 TYPE_1__* sgimc ;

__attribute__((used)) static inline unsigned long get_bank_size(unsigned int memconfig)
{
 return ((memconfig & SGIMC_MCONFIG_RMASK) + 0x0100) <<
  ((sgimc->systemid & SGIMC_SYSID_MASKREV) >= 5 ? 16 : 14);
}
