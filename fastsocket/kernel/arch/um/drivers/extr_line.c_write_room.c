
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int head; int tail; int * buffer; } ;


 int LINE_BUFSIZE ;

__attribute__((used)) static int write_room(struct line *line)
{
 int n;

 if (line->buffer == ((void*)0))
  return LINE_BUFSIZE - 1;


 n = line->head - line->tail;

 if (n <= 0)
  n += LINE_BUFSIZE;
 return n - 1;
}
