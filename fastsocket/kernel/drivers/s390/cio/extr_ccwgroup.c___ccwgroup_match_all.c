
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static int
__ccwgroup_match_all(struct device *dev, void *data)
{
 return 1;
}
