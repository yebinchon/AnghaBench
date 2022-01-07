
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int level; int noise; scalar_t__ qual; } ;
struct iw_range {int we_version_source; double throughput; int num_bitrates; int* bitrate; TYPE_1__ max_qual; scalar_t__ num_frequency; int num_channels; int we_version_compiled; } ;
struct iw_point {int length; } ;


 int WIRELESS_EXT ;
 scalar_t__ country ;
 int * hop_pattern_length ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int ray_get_range(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *dwrq, char *extra)
{
 struct iw_range *range = (struct iw_range *)extra;

 memset((char *)range, 0, sizeof(struct iw_range));


 dwrq->length = sizeof(struct iw_range);


 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 9;


 range->throughput = 1.1 * 1000 * 1000;
 range->num_channels = hop_pattern_length[(int)country];
 range->num_frequency = 0;
 range->max_qual.qual = 0;
 range->max_qual.level = 255;
 range->max_qual.noise = 255;
 range->num_bitrates = 2;
 range->bitrate[0] = 1000000;
 range->bitrate[1] = 2000000;
 return 0;
}
