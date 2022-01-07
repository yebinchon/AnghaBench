
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mbox {TYPE_1__* ops; } ;
typedef int mbox_msg_t ;
struct TYPE_2__ {int (* fifo_write ) (struct omap_mbox*,int ) ;} ;


 int stub1 (struct omap_mbox*,int ) ;

__attribute__((used)) static inline void mbox_fifo_write(struct omap_mbox *mbox, mbox_msg_t msg)
{
 mbox->ops->fifo_write(mbox, msg);
}
