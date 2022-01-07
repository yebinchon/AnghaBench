
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int lock; struct event_buffer* event_buffer; } ;
struct ibmasm_event {unsigned int data_size; int serial_number; int data; } ;
struct event_buffer {size_t next_index; int next_serial_number; struct ibmasm_event* events; } ;


 int IBMASM_EVENT_MAX_SIZE ;
 int IBMASM_NUM_EVENTS ;
 int memcpy_fromio (int ,void*,unsigned int) ;
 unsigned int min (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_event_readers (struct service_processor*) ;

void ibmasm_receive_event(struct service_processor *sp, void *data, unsigned int data_size)
{
 struct event_buffer *buffer = sp->event_buffer;
 struct ibmasm_event *event;
 unsigned long flags;

 data_size = min(data_size, IBMASM_EVENT_MAX_SIZE);

 spin_lock_irqsave(&sp->lock, flags);

 event = &buffer->events[buffer->next_index];
 memcpy_fromio(event->data, data, data_size);
 event->data_size = data_size;
 event->serial_number = buffer->next_serial_number;


 buffer->next_index = (buffer->next_index + 1) % IBMASM_NUM_EVENTS;
 buffer->next_serial_number++;
 spin_unlock_irqrestore(&sp->lock, flags);

 wake_up_event_readers(sp);
}
