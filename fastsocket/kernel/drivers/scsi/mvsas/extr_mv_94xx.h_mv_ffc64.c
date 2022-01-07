
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int mv_ffc (int ) ;

__attribute__((used)) static inline int
mv_ffc64(u64 v)
{
 int i;
 i = mv_ffc((u32)v);
 if (i >= 0)
  return i;
 i = mv_ffc((u32)(v>>32));

 if (i != 0)
  return 32 + i;

 return -1;
}
