
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmtimer_int_pending (int) ;
 int mmtimer_setup_int_0 (int,unsigned long) ;
 int mmtimer_setup_int_1 (int,unsigned long) ;
 int mmtimer_setup_int_2 (int,unsigned long) ;
 unsigned long rtc_time () ;

__attribute__((used)) static int mmtimer_setup(int cpu, int comparator, unsigned long expires)
{

 switch (comparator) {
 case 0:
  mmtimer_setup_int_0(cpu, expires);
  break;
 case 1:
  mmtimer_setup_int_1(cpu, expires);
  break;
 case 2:
  mmtimer_setup_int_2(cpu, expires);
  break;
 }

 if (rtc_time() <= expires)
  return 1;





 return mmtimer_int_pending(comparator);
}
