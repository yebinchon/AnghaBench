
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __s32 ;



__attribute__((used)) static __inline__ int search(__s32 *array, __s32 value, unsigned n)
{
 while (n--) {
  if (*array++ == value)
   return 0;
 }
 return -1;
}
