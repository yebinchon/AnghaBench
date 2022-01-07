
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src_port; int dst_port; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef int u32 ;


 int IXGBE_FDIRTCPM_DPORTM_SHIFT ;
 int ntohs (int ) ;

__attribute__((used)) static u32 ixgbe_get_fdirtcpm_82599(union ixgbe_atr_input *input_mask)
{
 u32 mask = ntohs(input_mask->formatted.dst_port);
 mask <<= IXGBE_FDIRTCPM_DPORTM_SHIFT;
 mask |= ntohs(input_mask->formatted.src_port);
 mask = ((mask & 0x55555555) << 1) | ((mask & 0xAAAAAAAA) >> 1);
 mask = ((mask & 0x33333333) << 2) | ((mask & 0xCCCCCCCC) >> 2);
 mask = ((mask & 0x0F0F0F0F) << 4) | ((mask & 0xF0F0F0F0) >> 4);
 return ((mask & 0x00FF00FF) << 8) | ((mask & 0xFF00FF00) >> 8);
}
