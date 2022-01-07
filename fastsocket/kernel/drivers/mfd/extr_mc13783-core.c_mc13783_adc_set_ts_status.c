
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783 {unsigned int ts_active; } ;



void mc13783_adc_set_ts_status(struct mc13783 *mc13783, unsigned int status)
{
 mc13783->ts_active = status;
}
