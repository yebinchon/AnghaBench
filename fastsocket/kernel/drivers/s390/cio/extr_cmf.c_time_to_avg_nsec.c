
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int ,int ) ;
 int time_to_nsec (int ) ;

__attribute__((used)) static inline u64 time_to_avg_nsec(u32 value, u32 count)
{
 u64 ret;


 if (count == 0)
  return 0;


 ret = time_to_nsec(value);
 do_div(ret, count);

 return ret;
}
