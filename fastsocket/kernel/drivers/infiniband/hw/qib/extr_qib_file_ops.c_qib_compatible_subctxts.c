
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QIB_USER_SWMAJOR ;
 int QIB_USER_SWMINOR ;

__attribute__((used)) static int qib_compatible_subctxts(int user_swmajor, int user_swminor)
{

 if (QIB_USER_SWMAJOR != user_swmajor) {

  return 0;
 }
 if (QIB_USER_SWMAJOR == 1) {
  switch (QIB_USER_SWMINOR) {
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
