
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PROT_EXEC ;
 unsigned int PROT_READ ;
 unsigned int PROT_WRITE ;

__attribute__((used)) static inline unsigned int
get_prot32 (unsigned int prot)
{
 if (prot & PROT_WRITE)

  prot |= PROT_READ | PROT_WRITE | PROT_EXEC;
 else if (prot & (PROT_READ | PROT_EXEC))

  prot |= (PROT_READ | PROT_EXEC);

 return prot;
}
