
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int memcpy (void*,void*,int ) ;

void copy_page(void *to, void *from)
{
 memcpy(to, from, PAGE_SIZE);
}
