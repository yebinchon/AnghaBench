
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long SUN3_PAGE_ACCESSED ;
 unsigned long SUN3_PAGE_MODIFIED ;
 unsigned long SUN3_PAGE_NOCACHE ;
 unsigned long SUN3_PAGE_PGNUM_MASK ;
 unsigned long SUN3_PAGE_SYSTEM ;

 unsigned long SUN3_PAGE_TYPE_MASK ;



 unsigned long SUN3_PAGE_VALID ;
 unsigned long SUN3_PAGE_WRITEABLE ;
 int printk (char*,...) ;
 unsigned long pte_val (int ) ;

void print_pte (pte_t pte)
{
 unsigned long val = pte_val (pte);
 char flags[7], *type;

 flags[0] = (val & SUN3_PAGE_VALID) ? 'v' : '-';
 flags[1] = (val & SUN3_PAGE_WRITEABLE) ? 'w' : '-';
 flags[2] = (val & SUN3_PAGE_SYSTEM) ? 's' : '-';
 flags[3] = (val & SUN3_PAGE_NOCACHE) ? 'x' : '-';
 flags[4] = (val & SUN3_PAGE_ACCESSED) ? 'a' : '-';
 flags[5] = (val & SUN3_PAGE_MODIFIED) ? 'm' : '-';
 flags[6] = '\0';

 switch (val & SUN3_PAGE_TYPE_MASK) {
  case 130: type = "memory"; break;
  case 131: type = "io" ; break;
  case 129: type = "vme16" ; break;
  case 128: type = "vme32" ; break;
  default: type = "unknown?"; break;
 }

 printk (" pte=%08lx [%07lx %s %s]\n",
  val, (val & SUN3_PAGE_PGNUM_MASK) << PAGE_SHIFT, flags, type);

}
