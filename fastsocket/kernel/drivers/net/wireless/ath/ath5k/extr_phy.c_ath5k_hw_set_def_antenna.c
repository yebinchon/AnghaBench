
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_DEFAULT_ANTENNA ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

__attribute__((used)) static void
ath5k_hw_set_def_antenna(struct ath5k_hw *ah, u8 ant)
{
 if (ah->ah_version != AR5K_AR5210)
  ath5k_hw_reg_write(ah, ant & 0x7, AR5K_DEFAULT_ANTENNA);
}
