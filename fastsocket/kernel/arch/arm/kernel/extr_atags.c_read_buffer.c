
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {size_t size; int * data; } ;
typedef size_t off_t ;


 int memcpy (char*,int *,int) ;
 int min (int,int) ;

__attribute__((used)) static int
read_buffer(char* page, char** start, off_t off, int count,
 int* eof, void* data)
{
 struct buffer *buffer = (struct buffer *)data;

 if (off >= buffer->size) {
  *eof = 1;
  return 0;
 }

 count = min((int) (buffer->size - off), count);

 memcpy(page, &buffer->data[off], count);

 return count;
}
