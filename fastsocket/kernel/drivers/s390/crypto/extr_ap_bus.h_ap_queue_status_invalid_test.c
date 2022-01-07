
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int dummy; } ;


 struct ap_queue_status AP_QUEUE_STATUS_INVALID ;
 int memcmp (struct ap_queue_status*,struct ap_queue_status*,int) ;

__attribute__((used)) static inline
int ap_queue_status_invalid_test(struct ap_queue_status *status)
{
 struct ap_queue_status invalid = AP_QUEUE_STATUS_INVALID;
 return !(memcmp(status, &invalid, sizeof(struct ap_queue_status)));
}
