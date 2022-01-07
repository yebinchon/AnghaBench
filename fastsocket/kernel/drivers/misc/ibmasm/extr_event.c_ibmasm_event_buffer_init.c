
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {struct event_buffer* event_buffer; } ;
struct ibmasm_event {scalar_t__ serial_number; } ;
struct event_buffer {int next_serial_number; int readers; struct ibmasm_event* events; scalar_t__ next_index; } ;


 int GFP_KERNEL ;
 int IBMASM_NUM_EVENTS ;
 int INIT_LIST_HEAD (int *) ;
 struct event_buffer* kmalloc (int,int ) ;

int ibmasm_event_buffer_init(struct service_processor *sp)
{
 struct event_buffer *buffer;
 struct ibmasm_event *event;
 int i;

 buffer = kmalloc(sizeof(struct event_buffer), GFP_KERNEL);
 if (!buffer)
  return 1;

 buffer->next_index = 0;
 buffer->next_serial_number = 1;

 event = buffer->events;
 for (i=0; i<IBMASM_NUM_EVENTS; i++, event++)
  event->serial_number = 0;

 INIT_LIST_HEAD(&buffer->readers);

 sp->event_buffer = buffer;

 return 0;
}
