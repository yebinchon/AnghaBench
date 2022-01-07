
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct ipath_portdata {scalar_t__ port_rcvhdrtail_kvaddr; } ;



__attribute__((used)) static inline void ipath_clear_rcvhdrtail(const struct ipath_portdata *pd)
{
 *((u64 *) pd->port_rcvhdrtail_kvaddr) = 0ULL;
}
