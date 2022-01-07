
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cmac {unsigned int offset; int adapter; } ;


 unsigned int A_XGM_RX_EXACT_MATCH_HIGH_1 ;
 unsigned int A_XGM_RX_EXACT_MATCH_LOW_1 ;
 unsigned int EXACT_ADDR_FILTERS ;
 int t3_read_reg (int ,unsigned int) ;
 int t3_write_reg (int ,unsigned int,int ) ;

void t3_mac_enable_exact_filters(struct cmac *mac)
{
 unsigned int i, reg = mac->offset + A_XGM_RX_EXACT_MATCH_HIGH_1;

 for (i = 0; i < EXACT_ADDR_FILTERS; i++, reg += 8) {
  u32 v = t3_read_reg(mac->adapter, reg);
  t3_write_reg(mac->adapter, reg, v);
 }
 t3_read_reg(mac->adapter, A_XGM_RX_EXACT_MATCH_LOW_1);
}
