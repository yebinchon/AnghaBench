
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; int int_enabled; } ;
typedef int ap_qid_t ;


 int AP_MAX_RESET ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 struct ap_queue_status ap_queue_interruption_control (int ,void*) ;
 struct ap_queue_status ap_test_queue (int ,int*,int*) ;
 int udelay (int) ;

__attribute__((used)) static int ap_queue_enable_interruption(ap_qid_t qid, void *ind)
{
 return -EINVAL;

}
