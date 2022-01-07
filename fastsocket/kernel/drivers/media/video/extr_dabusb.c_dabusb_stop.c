
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* pdabusb_t ;
struct TYPE_5__ {scalar_t__ counter; } ;
struct TYPE_6__ {TYPE_1__ pending_io; int rec_buff_list; int state; } ;


 int _stopped ;
 int dabusb_cancel_queue (TYPE_2__*,int *) ;
 int dbg (char*,...) ;

__attribute__((used)) static int dabusb_stop (pdabusb_t s)
{
 dbg("dabusb_stop");

 s->state = _stopped;
 dabusb_cancel_queue (s, &s->rec_buff_list);

 dbg("pending_io: %d", s->pending_io.counter);

 s->pending_io.counter = 0;
 return 0;
}
