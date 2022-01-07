
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PT_BP ;
 scalar_t__ PT_BP_CTRL ;
 long bp_owner ;
 int get_debugreg (long,scalar_t__) ;
 int put_debugreg (long,scalar_t__,unsigned long) ;

void deconfigure_bp(long pid)
{
 int bp;


 if (bp_owner != pid)
  return;

 for (bp = 0; bp < 6; bp++) {
  unsigned long tmp;

  put_debugreg(pid, PT_BP + 3 + (bp * 2), 0);
  put_debugreg(pid, PT_BP + 4 + (bp * 2), 0);


  tmp = get_debugreg(pid, PT_BP_CTRL) & ~(3 << (2 + (bp * 4)));
  put_debugreg(pid, PT_BP_CTRL, tmp);
 }

 bp_owner = 0;
}
