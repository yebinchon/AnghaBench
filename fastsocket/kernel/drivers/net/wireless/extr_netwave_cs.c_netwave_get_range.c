
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int qual; int level; scalar_t__ noise; } ;
struct iw_range {int we_version_source; int throughput; int min_nwid; int max_nwid; int sensitivity; int num_bitrates; int* bitrate; int* encoding_size; int num_encoding_sizes; int max_encoding_tokens; TYPE_2__ max_qual; scalar_t__ num_frequency; scalar_t__ num_channels; int we_version_compiled; } ;


 int WIRELESS_EXT ;
 int memset (struct iw_range*,int ,int) ;

__attribute__((used)) static int netwave_get_range(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu,
        char *extra)
{
 struct iw_range *range = (struct iw_range *) extra;
 int ret = 0;


 wrqu->data.length = sizeof(struct iw_range);


 memset(range, 0, sizeof(struct iw_range));


 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 9;


 range->throughput = 450 * 1000;
 range->min_nwid = 0x0000;
 range->max_nwid = 0x01FF;

 range->num_channels = range->num_frequency = 0;

 range->sensitivity = 0x3F;
 range->max_qual.qual = 255;
 range->max_qual.level = 255;
 range->max_qual.noise = 0;

 range->num_bitrates = 1;
 range->bitrate[0] = 1000000;

 range->encoding_size[0] = 2;
 range->num_encoding_sizes = 1;
 range->max_encoding_tokens = 1;

 return ret;
}
