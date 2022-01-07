
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qib_ctxtdata {size_t rcvegrbufs_perchunk_shift; void** rcvegrbuf; TYPE_1__* dd; scalar_t__ rcvegrbufs_perchunk; } ;
struct TYPE_2__ {size_t const rcvegrbufsize_shift; } ;



__attribute__((used)) static inline void *qib_get_egrbuf(const struct qib_ctxtdata *rcd, u32 etail)
{
 const u32 chunk = etail >> rcd->rcvegrbufs_perchunk_shift;
 const u32 idx = etail & ((u32)rcd->rcvegrbufs_perchunk - 1);

 return rcd->rcvegrbuf[chunk] + (idx << rcd->dd->rcvegrbufsize_shift);
}
