
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* cmbe_align (void*) ;

__attribute__((used)) static void * align_cmbe(void *area)
{
 return cmbe_align(area);
}
