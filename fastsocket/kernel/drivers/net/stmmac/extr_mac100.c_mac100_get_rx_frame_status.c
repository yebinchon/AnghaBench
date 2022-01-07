
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_extra_stats {int rx_multicast; int rx_mii; int rx_lenght; int rx_crc; int rx_collision; int rx_toolong; int rx_runt; int rx_partial; int rx_desc; } ;
struct net_device_stats {int multicast; int rx_crc_errors; int collisions; int rx_length_errors; } ;
struct TYPE_3__ {scalar_t__ last_descriptor; int error_summary; int descriptor_error; int partial_frame_error; int run_frame; int frame_too_long; int collision; int crc_error; int dribbling; int length_error; int mii_error; scalar_t__ multicast_frame; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct dma_desc {TYPE_2__ des01; } ;


 int csum_none ;
 int discard_frame ;
 int pr_warning (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mac100_get_rx_frame_status(void *data, struct stmmac_extra_stats *x,
          struct dma_desc *p)
{
 int ret = csum_none;
 struct net_device_stats *stats = (struct net_device_stats *)data;

 if (unlikely(p->des01.rx.last_descriptor == 0)) {
  pr_warning("mac100 Error: Oversized Ethernet "
      "frame spanned multiple buffers\n");
  stats->rx_length_errors++;
  return discard_frame;
 }

 if (unlikely(p->des01.rx.error_summary)) {
  if (unlikely(p->des01.rx.descriptor_error))
   x->rx_desc++;
  if (unlikely(p->des01.rx.partial_frame_error))
   x->rx_partial++;
  if (unlikely(p->des01.rx.run_frame))
   x->rx_runt++;
  if (unlikely(p->des01.rx.frame_too_long))
   x->rx_toolong++;
  if (unlikely(p->des01.rx.collision)) {
   x->rx_collision++;
   stats->collisions++;
  }
  if (unlikely(p->des01.rx.crc_error)) {
   x->rx_crc++;
   stats->rx_crc_errors++;
  }
  ret = discard_frame;
 }
 if (unlikely(p->des01.rx.dribbling))
  ret = discard_frame;

 if (unlikely(p->des01.rx.length_error)) {
  x->rx_lenght++;
  ret = discard_frame;
 }
 if (unlikely(p->des01.rx.mii_error)) {
  x->rx_mii++;
  ret = discard_frame;
 }
 if (p->des01.rx.multicast_frame) {
  x->rx_multicast++;
  stats->multicast++;
 }
 return ret;
}
