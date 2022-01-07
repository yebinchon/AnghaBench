
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bandwidth; } ;
struct raid_set {TYPE_1__ recover; } ;
typedef enum raid_set_flags { ____Placeholder_raid_set_flags } raid_set_flags ;


 int BANDWIDTH_MAX ;
 int BANDWIDTH_MIN ;
 int EINVAL ;
 int _absolute (char*,int,int) ;
 scalar_t__ range_ok (int,int ,int ) ;
 int recover_set_bandwidth (struct raid_set*,int) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int bandwidth_change(struct raid_set *rs, int argc, char **argv,
       enum raid_set_flags flag)
{
 int act = rs->recover.bandwidth, bandwidth;

 if (argc != 2)
  return -EINVAL;

 if (sscanf(argv[1], "%d", &bandwidth) == 1 &&
     range_ok(bandwidth, BANDWIDTH_MIN, BANDWIDTH_MAX)) {

  bandwidth = _absolute(argv[0], act, bandwidth);


  if (range_ok(bandwidth, BANDWIDTH_MIN, BANDWIDTH_MAX)) {
   recover_set_bandwidth(rs, bandwidth);
   return 0;
  }
 }

 return -EINVAL;
}
