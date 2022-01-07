
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucc_slow_private {TYPE_1__* us_regs; } ;
struct TYPE_2__ {int utodr; } ;


 int UCC_SLOW_TOD ;
 int out_be16 (int *,int ) ;

void ucc_slow_poll_transmitter_now(struct ucc_slow_private * uccs)
{
 out_be16(&uccs->us_regs->utodr, UCC_SLOW_TOD);
}
