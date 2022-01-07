
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int atomic_t ;
struct TYPE_2__ {int num_in_wfs; } ;


 unsigned long AP_WAIT_TIMEOUT ;
 unsigned long HZ ;
 int atomic_read (int *) ;
 int mdelay (int) ;
 int pr_warning (char*) ;
 TYPE_1__* tboot ;

__attribute__((used)) static int tboot_wait_for_aps(int num_aps)
{
 unsigned long timeout;

 timeout = AP_WAIT_TIMEOUT*HZ;
 while (atomic_read((atomic_t *)&tboot->num_in_wfs) != num_aps &&
        timeout) {
  mdelay(1);
  timeout--;
 }

 if (timeout)
  pr_warning("tboot wait for APs timeout\n");

 return !(atomic_read((atomic_t *)&tboot->num_in_wfs) == num_aps);
}
