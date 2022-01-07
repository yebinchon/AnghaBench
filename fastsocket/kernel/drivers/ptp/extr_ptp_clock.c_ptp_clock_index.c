
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock {int index; } ;



int ptp_clock_index(struct ptp_clock *ptp)
{
 return ptp->index;
}
