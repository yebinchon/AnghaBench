
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int *** rx_pages; } ;
typedef int cas_page_t ;


 int RX_DESC_RINGN_SIZE (int) ;
 int cas_page_free (struct cas*,int *) ;

__attribute__((used)) static inline void cas_free_rx_desc(struct cas *cp, int ring)
{
 cas_page_t **page = cp->rx_pages[ring];
 int i, size;

 size = RX_DESC_RINGN_SIZE(ring);
 for (i = 0; i < size; i++) {
  if (page[i]) {
   cas_page_free(cp, page[i]);
   page[i] = ((void*)0);
  }
 }
}
