
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DEFERRED_SET_SIZE ;

__attribute__((used)) static unsigned ds_next(unsigned index)
{
 return (index + 1) % DEFERRED_SET_SIZE;
}
