
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_helper_qlm_jtag_shift (int,int,int ) ;

void cvmx_helper_qlm_jtag_shift_zeros(int qlm, int bits)
{
 while (bits > 0) {
  int n = bits;
  if (n > 32)
   n = 32;
  cvmx_helper_qlm_jtag_shift(qlm, n, 0);
  bits -= n;
 }
}
