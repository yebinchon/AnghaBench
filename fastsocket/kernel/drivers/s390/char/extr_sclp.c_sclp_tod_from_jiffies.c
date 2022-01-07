
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long HZ ;

__attribute__((used)) static inline u64
sclp_tod_from_jiffies(unsigned long jiffies)
{
 return (u64) (jiffies / HZ) << 32;
}
