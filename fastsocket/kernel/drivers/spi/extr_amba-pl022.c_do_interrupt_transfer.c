
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pl022 {int virtbase; TYPE_2__* cur_msg; int cur_transfer; TYPE_1__* cur_chip; } ;
struct TYPE_4__ {int status; int state; } ;
struct TYPE_3__ {int (* cs_control ) (int ) ;} ;


 int EIO ;
 int ENABLE_ALL_INTERRUPTS ;
 int SSP_CHIP_SELECT ;
 int SSP_CR1 (int ) ;
 int SSP_CR1_MASK_SSE ;
 int SSP_IMSC (int ) ;
 int STATE_ERROR ;
 int giveback (struct pl022*) ;
 int readw (int ) ;
 scalar_t__ set_up_next_transfer (struct pl022*,int ) ;
 int stub1 (int ) ;
 int writew (int,int ) ;

__attribute__((used)) static void do_interrupt_transfer(void *data)
{
 struct pl022 *pl022 = data;


 pl022->cur_chip->cs_control(SSP_CHIP_SELECT);
 if (set_up_next_transfer(pl022, pl022->cur_transfer)) {

  pl022->cur_msg->state = STATE_ERROR;
  pl022->cur_msg->status = -EIO;
  giveback(pl022);
  return;
 }

 writew((readw(SSP_CR1(pl022->virtbase)) | SSP_CR1_MASK_SSE),
        SSP_CR1(pl022->virtbase));
 writew(ENABLE_ALL_INTERRUPTS, SSP_IMSC(pl022->virtbase));
}
