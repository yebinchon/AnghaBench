
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ldc_channel {scalar_t__ rcv_nxt; } ;



__attribute__((used)) static int rx_seq_ok(struct ldc_channel *lp, u32 seqid)
{
 return lp->rcv_nxt + 1 == seqid;
}
