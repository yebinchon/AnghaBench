
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRIMMER_DISABLE_RTC ;
 int ds1603_set_trimmer (int ) ;

void ds1603_disable(void)
{
 ds1603_set_trimmer(TRIMMER_DISABLE_RTC);
}
