
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_regulatory {int dummy; } ;


 int ath_regd_get_eepromRD (struct ath_regulatory*) ;
 int is_wwr_sku (int ) ;

bool ath_is_world_regd(struct ath_regulatory *reg)
{
 return is_wwr_sku(ath_regd_get_eepromRD(reg));
}
