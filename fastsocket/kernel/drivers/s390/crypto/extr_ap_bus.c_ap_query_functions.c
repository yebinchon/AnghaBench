
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
typedef int ap_qid_t ;


 int AP_MAX_RESET ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 struct ap_queue_status __ap_query_functions (int ,unsigned int*) ;
 scalar_t__ ap_queue_status_invalid_test (struct ap_queue_status*) ;
 int udelay (int) ;

__attribute__((used)) static int ap_query_functions(ap_qid_t qid, unsigned int *functions)
{
 return -EINVAL;

}
