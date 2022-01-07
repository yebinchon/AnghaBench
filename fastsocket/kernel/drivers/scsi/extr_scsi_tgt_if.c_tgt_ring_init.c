
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgt_ring {int * tr_pages; int tr_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TGT_RING_PAGES ;
 int eprintk (char*) ;
 int get_zeroed_page (int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int tgt_ring_init(struct tgt_ring *ring)
{
 int i;

 spin_lock_init(&ring->tr_lock);

 for (i = 0; i < TGT_RING_PAGES; i++) {
  ring->tr_pages[i] = get_zeroed_page(GFP_KERNEL);
  if (!ring->tr_pages[i]) {
   eprintk("out of memory\n");
   return -ENOMEM;
  }
 }

 return 0;
}
