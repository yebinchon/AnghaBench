
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 unsigned long atomic_read (int *) ;

__attribute__((used)) static int status_change_clear(unsigned long mask, atomic_t *status)
{
 return atomic_read(status) & mask;
}
