
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ipath_devdata {int ipath_sdma_desc_nreserved; } ;



__attribute__((used)) static inline void ipath_sdma_desc_reserve(struct ipath_devdata *dd, u16 cnt)
{
 dd->ipath_sdma_desc_nreserved += cnt;
}
