
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ia64_native_getreg_func (int) ;
 unsigned long xen_get_eflag () ;
 unsigned long xen_get_itc () ;
 unsigned long xen_get_itm_with_offset () ;
 unsigned long xen_get_ivr () ;
 unsigned long xen_get_psr () ;
 unsigned long xen_get_tpr () ;

__attribute__((used)) static unsigned long xen_getreg(int regnum)
{
 unsigned long res;

 switch (regnum) {
 case 128:
  res = xen_get_psr();
  break;





 case 132:
  res = xen_get_itc();
  break;
 case 131:
  res = xen_get_itm_with_offset();
  break;
 case 130:
  res = xen_get_ivr();
  break;
 case 129:
  res = xen_get_tpr();
  break;
 default:
  res = ia64_native_getreg_func(regnum);
  break;
 }
 return res;
}
