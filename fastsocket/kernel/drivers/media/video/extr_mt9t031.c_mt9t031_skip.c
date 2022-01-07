
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;


 int min (int,int) ;

__attribute__((used)) static u16 mt9t031_skip(s32 *source, s32 target, s32 max)
{
 unsigned int skip;

 if (*source < target + target / 2) {
  *source = target;
  return 1;
 }

 skip = min(max, *source + target / 2) / target;
 if (skip > 8)
  skip = 8;
 *source = target * skip;

 return skip;
}
