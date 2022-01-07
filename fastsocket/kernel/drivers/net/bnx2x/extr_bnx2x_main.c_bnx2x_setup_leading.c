
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int * fp; } ;


 int bnx2x_setup_queue (struct bnx2x*,int *,int) ;

int bnx2x_setup_leading(struct bnx2x *bp)
{
 return bnx2x_setup_queue(bp, &bp->fp[0], 1);
}
