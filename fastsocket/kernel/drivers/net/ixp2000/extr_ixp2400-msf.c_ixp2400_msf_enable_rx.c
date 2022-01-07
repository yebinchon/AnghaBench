
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixp2400_msf_parameters {int rx_mode; } ;


 int IXP2000_MSF_RX_CONTROL ;
 int ixp2000_reg_read (int ) ;
 int ixp2000_reg_write (int ,int) ;
 int ixp2400_msf_valid_channels (int ) ;

__attribute__((used)) static void ixp2400_msf_enable_rx(struct ixp2400_msf_parameters *mp)
{
 u32 value;

 value = ixp2000_reg_read(IXP2000_MSF_RX_CONTROL) & 0x0fffffff;
 value |= ixp2400_msf_valid_channels(mp->rx_mode) << 28;
 ixp2000_reg_write(IXP2000_MSF_RX_CONTROL, value);
}
