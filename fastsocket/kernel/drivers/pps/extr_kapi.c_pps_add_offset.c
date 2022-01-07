
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_ktime {scalar_t__ nsec; scalar_t__ sec; } ;


 scalar_t__ NSEC_PER_SEC ;

__attribute__((used)) static void pps_add_offset(struct pps_ktime *ts, struct pps_ktime *offset)
{
 ts->nsec += offset->nsec;
 while (ts->nsec >= NSEC_PER_SEC) {
  ts->nsec -= NSEC_PER_SEC;
  ts->sec++;
 }
 while (ts->nsec < 0) {
  ts->nsec += NSEC_PER_SEC;
  ts->sec--;
 }
 ts->sec += offset->sec;
}
