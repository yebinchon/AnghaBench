
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {unsigned long size; } ;
struct list_head {int dummy; } ;


 int free_string (struct list_head*,struct string*) ;

__attribute__((used)) static inline void
add_string_memory(struct list_head *free_list, void *mem, unsigned long size)
{
 struct string *cs;

 cs = (struct string *) mem;
 cs->size = size - sizeof(struct string);
 free_string(free_list, cs);
}
