
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spin_unlock (int *) ;
 int vector_lock ;

void unlock_vector_lock(void)
{
 spin_unlock(&vector_lock);
}
