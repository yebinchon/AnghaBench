
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_dmaring {int nr_slots; int used_slots; int rx_buffersize; TYPE_2__* ops; TYPE_1__* dev; } ;
struct b43_dmadesc_meta {int skb; int dmaaddr; } ;
struct b43_dmadesc_generic {int dummy; } ;
struct TYPE_4__ {struct b43_dmadesc_generic* (* idx2desc ) (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;} ;
struct TYPE_3__ {int wl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int b43err (int ,char*) ;
 int dev_kfree_skb (int ) ;
 int mb () ;
 int setup_rx_descbuffer (struct b43_dmaring*,struct b43_dmadesc_generic*,struct b43_dmadesc_meta*,int ) ;
 struct b43_dmadesc_generic* stub1 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;
 struct b43_dmadesc_generic* stub2 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;
 int unmap_descbuffer (struct b43_dmaring*,int ,int ,int ) ;

__attribute__((used)) static int alloc_initial_descbuffers(struct b43_dmaring *ring)
{
 int i, err = -ENOMEM;
 struct b43_dmadesc_generic *desc;
 struct b43_dmadesc_meta *meta;

 for (i = 0; i < ring->nr_slots; i++) {
  desc = ring->ops->idx2desc(ring, i, &meta);

  err = setup_rx_descbuffer(ring, desc, meta, GFP_KERNEL);
  if (err) {
   b43err(ring->dev->wl,
          "Failed to allocate initial descbuffers\n");
   goto err_unwind;
  }
 }
 mb();
 ring->used_slots = ring->nr_slots;
 err = 0;
      out:
 return err;

      err_unwind:
 for (i--; i >= 0; i--) {
  desc = ring->ops->idx2desc(ring, i, &meta);

  unmap_descbuffer(ring, meta->dmaaddr, ring->rx_buffersize, 0);
  dev_kfree_skb(meta->skb);
 }
 goto out;
}
