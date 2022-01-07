
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_buffer {int mto_char_sum; scalar_t__ current_length; int * current_line; } ;



int
sclp_chars_in_buffer(struct sclp_buffer *buffer)
{
 int count;

 count = buffer->mto_char_sum;
 if (buffer->current_line != ((void*)0))
  count += buffer->current_length;
 return count;
}
