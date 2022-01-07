
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct raid_set {TYPE_1__ io; } ;
typedef enum raid_set_flags { ____Placeholder_raid_set_flags } raid_set_flags ;


 int EINVAL ;
 int EPERM ;
 int RS_DEVEL_STATS ;
 int set_bit (int,int *) ;
 int stats_reset (struct raid_set*) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,size_t) ;
 scalar_t__ test_and_clear_bit (int,int *) ;
 scalar_t__ test_and_set_bit (int,int *) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int devel_flags(struct raid_set *rs, int argc, char **argv,
         enum raid_set_flags flag)
{
 size_t len;

 if (argc != 1)
  return -EINVAL;

 len = strlen(argv[0]);
 if (len < 2)
  len = 2;

 if (!strncmp(argv[0], "on", len))
  return test_and_set_bit(flag, &rs->io.flags) ? -EPERM : 0;
 else if (!strncmp(argv[0], "off", len))
  return test_and_clear_bit(flag, &rs->io.flags) ? 0 : -EPERM;
 else if (!strncmp(argv[0], "reset", len)) {
  if (flag == RS_DEVEL_STATS) {
   if (test_bit(flag, &rs->io.flags)) {
    stats_reset(rs);
    return 0;
   } else
    return -EPERM;
  } else {
   set_bit(flag, &rs->io.flags);
   return 0;
  }
 }

 return -EINVAL;
}
