
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BUG_ON (int) ;
 int PIC_LOWER ;
 int PIC_UPPER ;
 int perf_event_decode (unsigned long,int *,int*) ;
 int perf_max_events ;

__attribute__((used)) static int sparc_check_constraints(unsigned long *events, int n_ev)
{
 if (n_ev <= perf_max_events) {
  u8 msk1, msk2;
  u16 dummy;

  if (n_ev == 1)
   return 0;
  BUG_ON(n_ev != 2);
  perf_event_decode(events[0], &dummy, &msk1);
  perf_event_decode(events[1], &dummy, &msk2);


  if (msk1 == (PIC_UPPER | PIC_LOWER) &&
      msk2 == (PIC_UPPER | PIC_LOWER))
   return 0;




  if ((msk1 == PIC_UPPER || msk1 == PIC_LOWER) &&
      msk2 == (PIC_UPPER | PIC_LOWER))
   return 0;
  if ((msk2 == PIC_UPPER || msk2 == PIC_LOWER) &&
      msk1 == (PIC_UPPER | PIC_LOWER))
   return 0;


  if ((msk1 == PIC_UPPER && msk2 == PIC_LOWER) ||
      (msk1 == PIC_LOWER && msk2 == PIC_UPPER))
   return 0;


 }

 return -1;
}
