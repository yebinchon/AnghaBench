
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long last_jiffies; scalar_t__ io_count; } ;
struct raid_set {TYPE_1__ recover; } ;


 unsigned long HZ ;
 scalar_t__ IO_RECOVER ;
 scalar_t__ IO_WORK ;
 int atomic_set (scalar_t__,int ) ;
 unsigned long jiffies ;

__attribute__((used)) static int recover_io_reset(struct raid_set *rs)
{
 unsigned long j = jiffies;


 if (j > rs->recover.last_jiffies + HZ ||
     j < rs->recover.last_jiffies) {
  atomic_set(rs->recover.io_count + IO_WORK, 0);
  atomic_set(rs->recover.io_count + IO_RECOVER, 0);
  rs->recover.last_jiffies = j;
  return 1;
 }

 return 0;
}
