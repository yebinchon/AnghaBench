
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;



__attribute__((used)) static int wl3501_get_rate(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{





 wrqu->bitrate.value = 2000000;
 wrqu->bitrate.fixed = 1;
 return 0;
}
