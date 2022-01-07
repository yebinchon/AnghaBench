
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {scalar_t__ sectors; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t
rdev_size_show(struct md_rdev *rdev, char *page)
{
 return sprintf(page, "%llu\n", (unsigned long long)rdev->sectors / 2);
}
