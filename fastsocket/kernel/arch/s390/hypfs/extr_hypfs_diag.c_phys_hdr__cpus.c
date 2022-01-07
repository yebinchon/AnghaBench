
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x_phys_hdr {int cpus; } ;
struct phys_hdr {int cpus; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u8 ;


 int INFO_SIMPLE ;

__attribute__((used)) static inline __u8 phys_hdr__cpus(enum diag204_format type, void *hdr)
{
 if (type == INFO_SIMPLE)
  return ((struct phys_hdr *)hdr)->cpus;
 else
  return ((struct x_phys_hdr *)hdr)->cpus;
}
