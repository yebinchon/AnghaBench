
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mbox {TYPE_1__* ops; } ;
typedef int mbox_msg_t ;
struct TYPE_2__ {int (* fifo_read ) (struct omap_mbox*) ;} ;


 int stub1 (struct omap_mbox*) ;

__attribute__((used)) static inline mbox_msg_t mbox_fifo_read(struct omap_mbox *mbox)
{
 return mbox->ops->fifo_read(mbox);
}
