
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* isink_cur ;

__attribute__((used)) static int get_isink_val(int min_uA, int max_uA, u16 *setting)
{
 int i;

 for (i = ARRAY_SIZE(isink_cur) - 1; i >= 0; i--) {
  if (min_uA <= isink_cur[i] && max_uA >= isink_cur[i]) {
   *setting = i;
   return 0;
  }
 }
 return -EINVAL;
}
