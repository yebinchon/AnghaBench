
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_reader {scalar_t__ next_serial_number; } ;
struct event_buffer {scalar_t__ next_serial_number; } ;



__attribute__((used)) static inline int event_available(struct event_buffer *b, struct event_reader *r)
{
 return (r->next_serial_number < b->next_serial_number);
}
