
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



 int AD_AGGREGATE_WAIT_TIME ;
 int AD_CHURN_DETECTION_TIME ;

 int AD_LONG_TIMEOUT_TIME ;


 int AD_SHORT_TIMEOUT_TIME ;

 int ad_ticks_per_sec ;

__attribute__((used)) static u16 __ad_timer_to_ticks(u16 timer_type, u16 par)
{
 u16 retval=0;

 switch (timer_type) {
 case 131:
  if (par) {
   retval = (AD_SHORT_TIMEOUT_TIME*ad_ticks_per_sec);
  } else {
   retval = (AD_LONG_TIMEOUT_TIME*ad_ticks_per_sec);
  }
  break;
 case 132:
  retval = (AD_CHURN_DETECTION_TIME*ad_ticks_per_sec);
  break;
 case 129:
  retval = (par*ad_ticks_per_sec);
  break;
 case 130:
  retval = (AD_CHURN_DETECTION_TIME*ad_ticks_per_sec);
  break;
 case 128:
  retval = (AD_AGGREGATE_WAIT_TIME*ad_ticks_per_sec);
  break;
 }
 return retval;
}
