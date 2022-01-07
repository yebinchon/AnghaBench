
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct brcms_hardware {int dummy; } ;


 size_t BRCMS_RATE_MASK ;
 int M_RT_DIRMAP_A ;
 int M_RT_DIRMAP_B ;
 int brcms_b_read_shm (struct brcms_hardware*,int) ;
 scalar_t__ is_ofdm_rate (size_t) ;
 size_t* rate_info ;

u16 brcms_b_rate_shm_offset(struct brcms_hardware *wlc_hw, u8 rate)
{
 u16 table_ptr;
 u8 phy_rate, index;


 if (is_ofdm_rate(rate))
  table_ptr = M_RT_DIRMAP_A;
 else
  table_ptr = M_RT_DIRMAP_B;




 phy_rate = rate_info[rate] & BRCMS_RATE_MASK;
 index = phy_rate & 0xf;




 return 2 * brcms_b_read_shm(wlc_hw, table_ptr + (index * 2));
}
