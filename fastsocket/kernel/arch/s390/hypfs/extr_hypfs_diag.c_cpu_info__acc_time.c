
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x_cpu_info {int acc_time; } ;
struct cpu_info {int acc_time; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u64 ;


 int INFO_SIMPLE ;

__attribute__((used)) static inline __u64 cpu_info__acc_time(enum diag204_format type, void *hdr)
{
 if (type == INFO_SIMPLE)
  return ((struct cpu_info *)hdr)->acc_time;
 else
  return ((struct x_cpu_info *)hdr)->acc_time;
}
