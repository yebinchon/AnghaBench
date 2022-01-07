
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int power_mode; } ;




 int IPW_POWER_ENABLED ;
 int IPW_POWER_LEVEL (int) ;
 scalar_t__ MAX_WX_STRING ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int* period_duration ;
 int snprintf (char*,scalar_t__,char*,...) ;
 int* timeout_duration ;

__attribute__((used)) static int ipw_wx_get_powermode(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 int level = IPW_POWER_LEVEL(priv->power_mode);
 char *p = extra;

 p += snprintf(p, MAX_WX_STRING, "Power save level: %d ", level);

 switch (level) {
 case 129:
  p += snprintf(p, MAX_WX_STRING - (p - extra), "(AC)");
  break;
 case 128:
  p += snprintf(p, MAX_WX_STRING - (p - extra), "(BATTERY)");
  break;
 default:
  p += snprintf(p, MAX_WX_STRING - (p - extra),
         "(Timeout %dms, Period %dms)",
         timeout_duration[level - 1] / 1000,
         period_duration[level - 1] / 1000);
 }

 if (!(priv->power_mode & IPW_POWER_ENABLED))
  p += snprintf(p, MAX_WX_STRING - (p - extra), " OFF");

 wrqu->data.length = p - extra + 1;

 return 0;
}
