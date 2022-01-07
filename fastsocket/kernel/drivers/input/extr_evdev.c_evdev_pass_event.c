
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_event {int dummy; } ;
struct evdev_client {int head; int fasync; int buffer_lock; struct input_event* buffer; } ;


 int EVDEV_BUFFER_SIZE ;
 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void evdev_pass_event(struct evdev_client *client,
        struct input_event *event)
{



 spin_lock(&client->buffer_lock);
 client->buffer[client->head++] = *event;
 client->head &= EVDEV_BUFFER_SIZE - 1;
 spin_unlock(&client->buffer_lock);

 kill_fasync(&client->fasync, SIGIO, POLL_IN);
}
