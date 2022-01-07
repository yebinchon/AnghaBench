
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct savekmsg {int dummy; } ;
struct console {int dummy; } ;
struct TYPE_2__ {int size; int data; } ;


 int SAVEKMSG_MAXMEM ;
 int memcpy (int,char const*,unsigned int) ;
 TYPE_1__* savekmsg ;

__attribute__((used)) static void amiga_mem_console_write(struct console *co, const char *s,
        unsigned int count)
{
 if (savekmsg->size + count <= SAVEKMSG_MAXMEM-sizeof(struct savekmsg)) {
  memcpy(savekmsg->data + savekmsg->size, s, count);
  savekmsg->size += count;
 }
}
