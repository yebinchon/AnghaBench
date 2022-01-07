
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x_info_blk_hdr {int phys_cpus; } ;
struct info_blk_hdr {int phys_cpus; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u16 ;


 int INFO_SIMPLE ;

__attribute__((used)) static inline __u16 info_blk_hdr__pcpus(enum diag204_format type, void *hdr)
{
 if (type == INFO_SIMPLE)
  return ((struct info_blk_hdr *)hdr)->phys_cpus;
 else
  return ((struct x_info_blk_hdr *)hdr)->phys_cpus;
}
