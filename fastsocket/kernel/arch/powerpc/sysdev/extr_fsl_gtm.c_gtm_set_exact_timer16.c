
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gtm_timer {int dummy; } ;


 int gtm_set_ref_timer16 (struct gtm_timer*,int const,int ,int) ;

int gtm_set_exact_timer16(struct gtm_timer *tmr, u16 usec, bool reload)
{

 const int freq = 1000000;
 return gtm_set_ref_timer16(tmr, freq, usec, reload);
}
