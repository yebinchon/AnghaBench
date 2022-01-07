
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_buffer {int dummy; } ;


 uintptr_t PAGE_MASK ;

__attribute__((used)) static void *buffer_end_page(struct binder_buffer *buffer)
{
 return (void *)(((uintptr_t)(buffer + 1) - 1) & PAGE_MASK);
}
