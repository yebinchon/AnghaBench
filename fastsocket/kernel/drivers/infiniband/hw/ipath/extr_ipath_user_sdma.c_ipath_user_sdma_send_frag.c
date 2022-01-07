
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u16 ;
struct ipath_user_sdma_pkt {int naddr; TYPE_1__* addr; } ;
struct ipath_devdata {TYPE_2__* ipath_sdma_descq; } ;
typedef int __le64 ;
struct TYPE_4__ {int * qw; } ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ offset; scalar_t__ addr; } ;


 int ipath_sdma_make_desc0 (struct ipath_devdata*,int const,int const,unsigned int) ;
 int ipath_sdma_make_desc1 (int const) ;
 int ipath_sdma_make_first_desc0 (int ) ;
 int ipath_sdma_make_last_desc0 (int ) ;

__attribute__((used)) static void ipath_user_sdma_send_frag(struct ipath_devdata *dd,
          struct ipath_user_sdma_pkt *pkt, int idx,
          unsigned ofs, u16 tail)
{
 const u64 addr = (u64) pkt->addr[idx].addr +
  (u64) pkt->addr[idx].offset;
 const u64 dwlen = (u64) pkt->addr[idx].length / 4;
 __le64 *descqp;
 __le64 descq0;

 descqp = &dd->ipath_sdma_descq[tail].qw[0];

 descq0 = ipath_sdma_make_desc0(dd, addr, dwlen, ofs);
 if (idx == 0)
  descq0 = ipath_sdma_make_first_desc0(descq0);
 if (idx == pkt->naddr - 1)
  descq0 = ipath_sdma_make_last_desc0(descq0);

 descqp[0] = descq0;
 descqp[1] = ipath_sdma_make_desc1(addr);
}
