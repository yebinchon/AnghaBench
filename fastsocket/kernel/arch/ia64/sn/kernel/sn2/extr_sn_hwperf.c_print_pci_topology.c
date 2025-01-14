
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SALRET_NOT_IMPLEMENTED ;
 int SALRET_OK ;
 int __pa (char*) ;
 int ia64_sn_ioif_get_pci_topology (int ,size_t) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_pci_topology(struct seq_file *s)
{
 char *p;
 size_t sz;
 int e;

 for (sz = PAGE_SIZE; sz < 16 * PAGE_SIZE; sz += PAGE_SIZE) {
  if (!(p = kmalloc(sz, GFP_KERNEL)))
   break;
  e = ia64_sn_ioif_get_pci_topology(__pa(p), sz);
  if (e == SALRET_OK)
   seq_puts(s, p);
  kfree(p);
  if (e == SALRET_OK || e == SALRET_NOT_IMPLEMENTED)
   break;
 }
}
