
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp2400_msf_parameters {int rx_mode; } ;


 int IXP2000_MSF_RBUF_ELEMENT_DONE ;
 int IXP2400_RX_MODE_RBUF_SIZE_128 ;
 int IXP2400_RX_MODE_RBUF_SIZE_256 ;
 int IXP2400_RX_MODE_RBUF_SIZE_64 ;
 int IXP2400_RX_MODE_RBUF_SIZE_MASK ;
 int ixp2000_reg_write (int ,int) ;

__attribute__((used)) static void ixp2400_msf_free_rbuf_entries(struct ixp2400_msf_parameters *mp)
{
 int size_bits;
 int i;






 size_bits = mp->rx_mode & IXP2400_RX_MODE_RBUF_SIZE_MASK;
 if (size_bits == IXP2400_RX_MODE_RBUF_SIZE_64) {
  for (i = 1; i < 128; i++) {
   if (i == 9 || i == 18 || i == 27)
    continue;
   ixp2000_reg_write(IXP2000_MSF_RBUF_ELEMENT_DONE, i);
  }
 } else if (size_bits == IXP2400_RX_MODE_RBUF_SIZE_128) {
  for (i = 1; i < 64; i++) {
   if (i == 4 || i == 9 || i == 13)
    continue;
   ixp2000_reg_write(IXP2000_MSF_RBUF_ELEMENT_DONE, i);
  }
 } else if (size_bits == IXP2400_RX_MODE_RBUF_SIZE_256) {
  for (i = 1; i < 32; i++) {
   if (i == 2 || i == 4 || i == 6)
    continue;
   ixp2000_reg_write(IXP2000_MSF_RBUF_ELEMENT_DONE, i);
  }
 }
}
