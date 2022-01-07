
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath_common {int* macaddr; } ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int const) ;} ;


 int EADDRNOTAVAIL ;



 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int stub1 (struct ath_hw*,int const) ;

__attribute__((used)) static int ath9k_hw_init_macaddr(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 u32 sum;
 int i;
 u16 eeval;
 static const u32 EEP_MAC[] = { 130, 129, 128 };

 sum = 0;
 for (i = 0; i < 3; i++) {
  eeval = ah->eep_ops->get_eeprom(ah, EEP_MAC[i]);
  sum += eeval;
  common->macaddr[2 * i] = eeval >> 8;
  common->macaddr[2 * i + 1] = eeval & 0xff;
 }
 if (sum == 0 || sum == 0xffff * 3)
  return -EADDRNOTAVAIL;

 return 0;
}
