
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsb {int dummy; } ;
struct tcw {scalar_t__ tsb; } ;
typedef scalar_t__ addr_t ;



struct tsb *tcw_get_tsb(struct tcw *tcw)
{
 return (struct tsb *) ((addr_t) tcw->tsb);
}
