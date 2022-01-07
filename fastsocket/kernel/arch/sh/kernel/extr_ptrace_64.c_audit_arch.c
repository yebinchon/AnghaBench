
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EM_SH ;
 int __AUDIT_ARCH_64BIT ;
 int __AUDIT_ARCH_LE ;

__attribute__((used)) static inline int audit_arch(void)
{
 int arch = EM_SH;
 return arch;
}
