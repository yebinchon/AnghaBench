
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int _PAGE_PAT ;
 int _PAGE_PAT_LARGE ;
 int _PAGE_PCD ;
 int _PAGE_PWT ;
 int pgprot_val (int ) ;

__attribute__((used)) static inline int cache_attr(pgprot_t attr)
{
 return pgprot_val(attr) &
  (_PAGE_PAT | _PAGE_PAT_LARGE | _PAGE_PWT | _PAGE_PCD);
}
