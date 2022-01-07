
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static void *malloc(size_t size)
{
 return kmalloc(size, GFP_ATOMIC);
}
