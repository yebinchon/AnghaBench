
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IPMI_REQUEST_EV_TIME ;
 scalar_t__ IPMI_TIMEOUT_JIFFIES ;
 int IPMI_TIMEOUT_TIME ;
 scalar_t__ atomic_read (int *) ;
 int ipmi_request_event () ;
 int ipmi_timeout_handler (int ) ;
 int ipmi_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int stop_operation ;
 scalar_t__ ticks_to_req_ev ;

__attribute__((used)) static void ipmi_timeout(unsigned long data)
{
 if (atomic_read(&stop_operation))
  return;

 ticks_to_req_ev--;
 if (ticks_to_req_ev == 0) {
  ipmi_request_event();
  ticks_to_req_ev = IPMI_REQUEST_EV_TIME;
 }

 ipmi_timeout_handler(IPMI_TIMEOUT_TIME);

 mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
}
