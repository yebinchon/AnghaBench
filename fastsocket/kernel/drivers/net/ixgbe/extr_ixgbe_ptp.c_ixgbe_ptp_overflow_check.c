
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct ixgbe_adapter {scalar_t__ last_overflow_check; int ptp_caps; } ;


 scalar_t__ IXGBE_OVERFLOW_PERIOD ;
 int ixgbe_ptp_gettime (int *,struct timespec*) ;
 scalar_t__ jiffies ;
 int time_is_before_jiffies (scalar_t__) ;

void ixgbe_ptp_overflow_check(struct ixgbe_adapter *adapter)
{
 bool timeout = time_is_before_jiffies(adapter->last_overflow_check +
          IXGBE_OVERFLOW_PERIOD);
 struct timespec ts;

 if (timeout) {
  ixgbe_ptp_gettime(&adapter->ptp_caps, &ts);
  adapter->last_overflow_check = jiffies;
 }
}
