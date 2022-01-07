
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_info {unsigned long size; } ;


 int memcpy (void*,void*,unsigned long) ;
 struct alloc_info* simple_find_entry (void*) ;
 int simple_free (void*) ;
 void* simple_malloc (unsigned long) ;

__attribute__((used)) static void *simple_realloc(void *ptr, unsigned long size)
{
 struct alloc_info *p;
 void *new;

 if (size == 0) {
  simple_free(ptr);
  return ((void*)0);
 }

 if (ptr == ((void*)0))
  return simple_malloc(size);

 p = simple_find_entry(ptr);
 if (p == ((void*)0))
  return ((void*)0);
 if (size <= p->size)
  return ptr;

 new = simple_malloc(size);
 memcpy(new, ptr, p->size);
 simple_free(ptr);
 return new;
}
