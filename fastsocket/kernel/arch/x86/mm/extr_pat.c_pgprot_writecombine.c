
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int _PAGE_CACHE_WC ;
 int __pgprot (int) ;
 scalar_t__ pat_enabled ;
 int pgprot_noncached (int ) ;
 int pgprot_val (int ) ;

pgprot_t pgprot_writecombine(pgprot_t prot)
{
 if (pat_enabled)
  return __pgprot(pgprot_val(prot) | _PAGE_CACHE_WC);
 else
  return pgprot_noncached(prot);
}
