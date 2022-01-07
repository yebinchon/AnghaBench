
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walkera_dev {int parport; int pardevice; int input_dev; int timer; } ;


 int hrtimer_cancel (int *) ;
 int input_unregister_device (int ) ;
 int parport_put_port (int ) ;
 int parport_release (int ) ;
 int parport_unregister_device (int ) ;

__attribute__((used)) static void walkera0701_disconnect(struct walkera_dev *w)
{
 hrtimer_cancel(&w->timer);
 input_unregister_device(w->input_dev);
 parport_release(w->pardevice);
 parport_unregister_device(w->pardevice);
 parport_put_port(w->parport);
}
