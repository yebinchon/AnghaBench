
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long long recovery_cp; int flags; scalar_t__ pers; int recovery; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 int MD_CHANGE_CLEAN ;
 int MD_RECOVERY_FROZEN ;
 unsigned long long MaxSector ;
 scalar_t__ cmd_match (char const*,char*) ;
 int set_bit (int ,int *) ;
 unsigned long long simple_strtoull (char const*,char**,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
resync_start_store(struct mddev *mddev, const char *buf, size_t len)
{
 char *e;
 unsigned long long n = simple_strtoull(buf, &e, 10);

 if (mddev->pers && !test_bit(MD_RECOVERY_FROZEN, &mddev->recovery))
  return -EBUSY;
 if (cmd_match(buf, "none"))
  n = MaxSector;
 else if (!*buf || (*e && *e != '\n'))
  return -EINVAL;

 mddev->recovery_cp = n;
 if (mddev->pers)
  set_bit(MD_CHANGE_CLEAN, &mddev->flags);
 return len;
}
