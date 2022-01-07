
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipath_portdata {scalar_t__ port_rcvhdrtail_kvaddr; } ;
typedef int __le64 ;


 int le64_to_cpu (int volatile) ;

__attribute__((used)) static inline u32 ipath_get_rcvhdrtail(const struct ipath_portdata *pd)
{
 return (u32) le64_to_cpu(*((volatile __le64 *)
    pd->port_rcvhdrtail_kvaddr));
}
