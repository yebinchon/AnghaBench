
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int power_mode; } ;
typedef int s32 ;



 int IPW_POWER_ENABLED ;
 int IPW_POWER_LEVEL (int) ;

 int MAX_POWER_STRING ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int* period_duration ;
 int snprintf (char*,int ,char*,int,...) ;
 scalar_t__ strlen (char*) ;
 int* timeout_duration ;

__attribute__((used)) static int ipw2100_wx_get_powermode(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);
 int level = IPW_POWER_LEVEL(priv->power_mode);
 s32 timeout, period;

 if (!(priv->power_mode & IPW_POWER_ENABLED)) {
  snprintf(extra, MAX_POWER_STRING,
    "Power save level: %d (Off)", level);
 } else {
  switch (level) {
  case 128:
   snprintf(extra, MAX_POWER_STRING,
     "Power save level: %d (None)", level);
   break;
  case 129:
   snprintf(extra, MAX_POWER_STRING,
     "Power save level: %d (Auto)", level);
   break;
  default:
   timeout = timeout_duration[level - 1] / 1000;
   period = period_duration[level - 1] / 1000;
   snprintf(extra, MAX_POWER_STRING,
     "Power save level: %d "
     "(Timeout %dms, Period %dms)",
     level, timeout, period);
  }
 }

 wrqu->data.length = strlen(extra) + 1;

 return 0;
}
