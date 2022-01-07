
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int corrected_errors; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int atomic_set (int *,unsigned long) ;
 unsigned long simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t
errors_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 char *e;
 unsigned long n = simple_strtoul(buf, &e, 10);
 if (*buf && (*e == 0 || *e == '\n')) {
  atomic_set(&rdev->corrected_errors, n);
  return len;
 }
 return -EINVAL;
}
