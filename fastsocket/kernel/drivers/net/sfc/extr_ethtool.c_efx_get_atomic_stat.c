
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic_t ;


 int atomic_read (int *) ;

__attribute__((used)) static u64 efx_get_atomic_stat(void *field)
{
 return atomic_read((atomic_t *) field);
}
