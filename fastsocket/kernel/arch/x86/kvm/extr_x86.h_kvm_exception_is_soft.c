
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BP_VECTOR ;
 unsigned int OF_VECTOR ;

__attribute__((used)) static inline bool kvm_exception_is_soft(unsigned int nr)
{
 return (nr == BP_VECTOR) || (nr == OF_VECTOR);
}
