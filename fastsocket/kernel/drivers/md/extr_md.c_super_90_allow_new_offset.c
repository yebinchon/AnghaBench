
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int dummy; } ;



__attribute__((used)) static int
super_90_allow_new_offset(struct md_rdev *rdev, unsigned long long new_offset)
{

 return new_offset == 0;
}
