
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long spmf_mult () ;
 unsigned long sysdiv_div_x_2 () ;

__attribute__((used)) static unsigned long sys_to_ref(unsigned long rate)
{
 rate *= sysdiv_div_x_2();
 rate /= 2;
 rate /= spmf_mult();

 return rate;
}
