
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 int hp_sdc_rtc_async_queue ;

__attribute__((used)) static int hp_sdc_rtc_fasync (int fd, struct file *filp, int on)
{
        return fasync_helper (fd, filp, on, &hp_sdc_rtc_async_queue);
}
