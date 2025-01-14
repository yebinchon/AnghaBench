
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cmac {int offset; int adapter; } ;


 scalar_t__ A_XGM_RX_EXACT_MATCH_HIGH_1 ;
 scalar_t__ A_XGM_RX_EXACT_MATCH_LOW_1 ;
 int t3_write_reg (int ,scalar_t__,int) ;

__attribute__((used)) static void set_addr_filter(struct cmac *mac, int idx, const u8 * addr)
{
 u32 addr_lo, addr_hi;
 unsigned int oft = mac->offset + idx * 8;

 addr_lo = (addr[3] << 24) | (addr[2] << 16) | (addr[1] << 8) | addr[0];
 addr_hi = (addr[5] << 8) | addr[4];

 t3_write_reg(mac->adapter, A_XGM_RX_EXACT_MATCH_LOW_1 + oft, addr_lo);
 t3_write_reg(mac->adapter, A_XGM_RX_EXACT_MATCH_HIGH_1 + oft, addr_hi);
}
