
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int kfree (void const*) ;
 void* kmalloc (size_t,int ) ;
 int memcpy (void*,void const*,int ) ;
 int min (size_t,size_t) ;

__attribute__((used)) static void *Realloc(const void *oldmem, size_t newlen, size_t oldlen)
{
 void *newmem = kmalloc(newlen, GFP_KERNEL);

 if (newmem && oldmem)
  memcpy(newmem, oldmem, min(oldlen, newlen));
 kfree(oldmem);
 return newmem;
}
