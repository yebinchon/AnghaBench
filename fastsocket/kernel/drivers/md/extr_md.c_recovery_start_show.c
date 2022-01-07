
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {unsigned long long recovery_offset; int flags; } ;
typedef int ssize_t ;


 int In_sync ;
 unsigned long long MaxSector ;
 int sprintf (char*,char*,...) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t recovery_start_show(struct md_rdev *rdev, char *page)
{
 unsigned long long recovery_start = rdev->recovery_offset;

 if (test_bit(In_sync, &rdev->flags) ||
     recovery_start == MaxSector)
  return sprintf(page, "none\n");

 return sprintf(page, "%llu\n", recovery_start);
}
