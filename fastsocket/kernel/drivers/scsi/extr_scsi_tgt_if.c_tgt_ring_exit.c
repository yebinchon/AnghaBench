
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgt_ring {int * tr_pages; } ;


 int TGT_RING_PAGES ;
 int free_page (int ) ;

__attribute__((used)) static void tgt_ring_exit(struct tgt_ring *ring)
{
 int i;

 for (i = 0; i < TGT_RING_PAGES; i++)
  free_page(ring->tr_pages[i]);
}
