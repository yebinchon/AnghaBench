
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int name; struct pi_adapter* pi; } ;
struct pi_adapter {int dummy; } ;


 int PT_SPIN ;
 int PT_SPIN_DEL ;
 int STAT_ERR ;
 int printk (char*,int ,char*,char*,int,int,int,int,int) ;
 int read_reg (struct pi_adapter*,int) ;
 int status_reg (struct pi_adapter*) ;
 int udelay (int ) ;

__attribute__((used)) static int pt_wait(struct pt_unit *tape, int go, int stop, char *fun, char *msg)
{
 int j, r, e, s, p;
 struct pi_adapter *pi = tape->pi;

 j = 0;
 while ((((r = status_reg(pi)) & go) || (stop && (!(r & stop))))
        && (j++ < PT_SPIN))
  udelay(PT_SPIN_DEL);

 if ((r & (STAT_ERR & stop)) || (j >= PT_SPIN)) {
  s = read_reg(pi, 7);
  e = read_reg(pi, 1);
  p = read_reg(pi, 2);
  if (j >= PT_SPIN)
   e |= 0x100;
  if (fun)
   printk("%s: %s %s: alt=0x%x stat=0x%x err=0x%x"
          " loop=%d phase=%d\n",
          tape->name, fun, msg, r, s, e, j, p);
  return (e << 8) + s;
 }
 return 0;
}
