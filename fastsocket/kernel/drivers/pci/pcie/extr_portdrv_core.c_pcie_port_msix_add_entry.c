
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msix_entry {int entry; } ;



__attribute__((used)) static int pcie_port_msix_add_entry(
 struct msix_entry *entries, int new_entry, int nr_entries)
{
 int j;

 for (j = 0; j < nr_entries; j++)
  if (entries[j].entry == new_entry)
   return j;

 entries[j].entry = new_entry;
 return j;
}
