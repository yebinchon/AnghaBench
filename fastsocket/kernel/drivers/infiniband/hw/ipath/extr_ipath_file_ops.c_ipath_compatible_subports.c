
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPATH_USER_SWMAJOR ;
 int IPATH_USER_SWMINOR ;

__attribute__((used)) static int ipath_compatible_subports(int user_swmajor, int user_swminor)
{

 if (IPATH_USER_SWMAJOR != user_swmajor) {

  return 0;
 }
 if (IPATH_USER_SWMAJOR == 1) {
  switch (IPATH_USER_SWMINOR) {
  case 0:
  case 1:
  case 2:

   return 0;
  case 3:

   return user_swminor == 3;
  default:

   return user_swminor >= 4;
  }
 }

 return 0;
}
