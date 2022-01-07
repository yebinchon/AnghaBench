
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct tsb {int dummy; } ;
struct tcw {scalar_t__ tsb; } ;
typedef scalar_t__ addr_t ;



void tcw_set_tsb(struct tcw *tcw, struct tsb *tsb)
{
 tcw->tsb = (u64) ((addr_t) tsb);
}
