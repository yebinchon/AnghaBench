
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x_part_hdr {int rcpus; } ;
struct part_hdr {int cpus; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u8 ;


 int INFO_SIMPLE ;

__attribute__((used)) static inline __u8 part_hdr__rcpus(enum diag204_format type, void *hdr)
{
 if (type == INFO_SIMPLE)
  return ((struct part_hdr *)hdr)->cpus;
 else
  return ((struct x_part_hdr *)hdr)->rcpus;
}
