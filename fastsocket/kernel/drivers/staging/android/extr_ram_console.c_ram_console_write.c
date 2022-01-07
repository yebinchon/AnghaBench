
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ram_console_buffer {unsigned int start; unsigned int size; } ;
struct console {int dummy; } ;


 struct ram_console_buffer* ram_console_buffer ;
 unsigned int ram_console_buffer_size ;
 int ram_console_update (char const*,unsigned int) ;
 int ram_console_update_header () ;

__attribute__((used)) static void
ram_console_write(struct console *console, const char *s, unsigned int count)
{
 int rem;
 struct ram_console_buffer *buffer = ram_console_buffer;

 if (count > ram_console_buffer_size) {
  s += count - ram_console_buffer_size;
  count = ram_console_buffer_size;
 }
 rem = ram_console_buffer_size - buffer->start;
 if (rem < count) {
  ram_console_update(s, rem);
  s += rem;
  count -= rem;
  buffer->start = 0;
  buffer->size = ram_console_buffer_size;
 }
 ram_console_update(s, count);

 buffer->start += count;
 if (buffer->size < ram_console_buffer_size)
  buffer->size += count;
 ram_console_update_header();
}
