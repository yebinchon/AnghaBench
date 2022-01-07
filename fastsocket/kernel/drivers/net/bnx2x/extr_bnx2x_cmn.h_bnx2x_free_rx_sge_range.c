
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {scalar_t__ disable_tpa; } ;
struct bnx2x {int dummy; } ;


 int bnx2x_free_rx_sge (struct bnx2x*,struct bnx2x_fastpath*,int) ;

__attribute__((used)) static inline void bnx2x_free_rx_sge_range(struct bnx2x *bp,
        struct bnx2x_fastpath *fp, int last)
{
 int i;

 if (fp->disable_tpa)
  return;

 for (i = 0; i < last; i++)
  bnx2x_free_rx_sge(bp, fp, i);
}
