
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

__attribute__((used)) static void flush_entry_free(void *element, void *pool_data)
{
 kfree(element);
}
