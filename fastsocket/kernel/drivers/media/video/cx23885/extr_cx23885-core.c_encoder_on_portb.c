
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx23885_dev {size_t board; } ;
struct TYPE_2__ {scalar_t__ portb; } ;


 scalar_t__ CX23885_MPEG_ENCODER ;
 TYPE_1__* cx23885_boards ;

__attribute__((used)) static inline int encoder_on_portb(struct cx23885_dev *dev)
{
 return cx23885_boards[dev->board].portb == CX23885_MPEG_ENCODER;
}
