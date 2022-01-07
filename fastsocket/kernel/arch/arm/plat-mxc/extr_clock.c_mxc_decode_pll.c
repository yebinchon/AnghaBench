
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_is_mx1 () ;
 int cpu_is_mx21 () ;
 int do_div (long long,unsigned int) ;

unsigned long mxc_decode_pll(unsigned int reg_val, u32 freq)
{
 long long ll;
 int mfn_abs;
 unsigned int mfi, mfn, mfd, pd;

 mfi = (reg_val >> 10) & 0xf;
 mfn = reg_val & 0x3ff;
 mfd = (reg_val >> 16) & 0x3ff;
 pd = (reg_val >> 26) & 0xf;

 mfi = mfi <= 5 ? 5 : mfi;

 mfn_abs = mfn;




 if (!cpu_is_mx1() && !cpu_is_mx21() && mfn >= 0x200)
  mfn_abs = 0x400 - mfn;

 freq *= 2;
 freq /= pd + 1;

 ll = (unsigned long long)freq * mfn_abs;

 do_div(ll, mfd + 1);

 if (!cpu_is_mx1() && !cpu_is_mx21() && mfn >= 0x200)
  ll = -ll;

 ll = (freq * mfi) + ll;

 return ll;
}
