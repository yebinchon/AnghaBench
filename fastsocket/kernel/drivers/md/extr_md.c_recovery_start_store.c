
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_rdev {scalar_t__ raid_disk; unsigned long long recovery_offset; int flags; TYPE_1__* mddev; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ pers; } ;


 size_t EBUSY ;
 size_t EINVAL ;
 int In_sync ;
 unsigned long long MaxSector ;
 int clear_bit (int ,int *) ;
 scalar_t__ cmd_match (char const*,char*) ;
 scalar_t__ kstrtoull (char const*,int,unsigned long long*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static ssize_t recovery_start_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 unsigned long long recovery_start;

 if (cmd_match(buf, "none"))
  recovery_start = MaxSector;
 else if (kstrtoull(buf, 10, &recovery_start))
  return -EINVAL;

 if (rdev->mddev->pers &&
     rdev->raid_disk >= 0)
  return -EBUSY;

 rdev->recovery_offset = recovery_start;
 if (recovery_start == MaxSector)
  set_bit(In_sync, &rdev->flags);
 else
  clear_bit(In_sync, &rdev->flags);
 return len;
}
