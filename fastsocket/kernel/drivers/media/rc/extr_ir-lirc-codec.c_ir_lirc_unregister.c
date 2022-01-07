
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct lirc_codec {TYPE_2__* drv; } ;
struct TYPE_4__ {int rbuf; int minor; } ;
struct TYPE_3__ {struct lirc_codec lirc; } ;


 int kfree (TYPE_2__*) ;
 int lirc_buffer_free (int ) ;
 int lirc_unregister_driver (int ) ;

__attribute__((used)) static int ir_lirc_unregister(struct rc_dev *dev)
{
 struct lirc_codec *lirc = &dev->raw->lirc;

 lirc_unregister_driver(lirc->drv->minor);
 lirc_buffer_free(lirc->drv->rbuf);
 kfree(lirc->drv);

 return 0;
}
