
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct b43_dmaring {int nr_failed_tx_packets; int nr_succeed_tx_packets; int nr_total_packet_tries; struct b43_dmaring* meta; struct b43_dmaring* txhdr_cache; int nr_slots; int max_used_slots; scalar_t__ type; TYPE_1__* dev; } ;
struct TYPE_2__ {int wl; } ;


 int b43dbg (int ,char*,unsigned int,char const*,int ,int ,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 int divide (int,int) ;
 int dmacontroller_cleanup (struct b43_dmaring*) ;
 int free_all_descbuffers (struct b43_dmaring*) ;
 int free_ringmemory (struct b43_dmaring*) ;
 int kfree (struct b43_dmaring*) ;
 scalar_t__ modulo (int,int) ;

__attribute__((used)) static void b43_destroy_dmaring(struct b43_dmaring *ring,
    const char *ringname)
{
 if (!ring)
  return;
 dmacontroller_cleanup(ring);
 free_all_descbuffers(ring);
 free_ringmemory(ring);

 kfree(ring->txhdr_cache);
 kfree(ring->meta);
 kfree(ring);
}
