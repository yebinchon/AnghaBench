
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_priv {int dummy; } ;


 int BIT (int) ;
 int RATE_ANT_NUM ;

__attribute__((used)) static void
il4965_toggle_tx_ant(struct il_priv *il, u8 *ant, u8 valid)
{
 int i;
 u8 ind = *ant;

 for (i = 0; i < RATE_ANT_NUM - 1; i++) {
  ind = (ind + 1) < RATE_ANT_NUM ? ind + 1 : 0;
  if (valid & BIT(ind)) {
   *ant = ind;
   return;
  }
 }
}
