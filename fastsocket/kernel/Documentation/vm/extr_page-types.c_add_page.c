
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int bit_mask_ok (int ) ;
 size_t hash_slot (int ) ;
 int hwpoison_page (unsigned long) ;
 int kpageflags_flags (int ) ;
 int * nr_pages ;
 scalar_t__ opt_hwpoison ;
 int opt_list ;
 scalar_t__ opt_unpoison ;
 int show_page (unsigned long,unsigned long,int ) ;
 int show_page_range (unsigned long,unsigned long,int ) ;
 int total_pages ;
 int unpoison_page (unsigned long) ;

__attribute__((used)) static void add_page(unsigned long voffset,
       unsigned long offset, uint64_t flags)
{
 flags = kpageflags_flags(flags);

 if (!bit_mask_ok(flags))
  return;

 if (opt_hwpoison)
  hwpoison_page(offset);
 if (opt_unpoison)
  unpoison_page(offset);

 if (opt_list == 1)
  show_page_range(voffset, offset, flags);
 else if (opt_list == 2)
  show_page(voffset, offset, flags);

 nr_pages[hash_slot(flags)]++;
 total_pages++;
}
