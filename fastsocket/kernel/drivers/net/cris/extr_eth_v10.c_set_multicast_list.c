
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int lock; } ;
struct net_device {int mc_count; int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 unsigned long* R_NETWORK_GA_0 ;
 unsigned long* R_NETWORK_GA_1 ;
 int * R_NETWORK_REC_CONFIG ;
 int SETS (int ,int *,int ,int ) ;
 int discard ;
 int individual ;
 struct net_local* netdev_priv (struct net_device*) ;
 int network_rec_config_shadow ;
 int receive ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
set_multicast_list(struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);
 int num_addr = dev->mc_count;
 unsigned long int lo_bits;
 unsigned long int hi_bits;

 spin_lock(&lp->lock);
 if (dev->flags & IFF_PROMISC) {

  lo_bits = 0xfffffffful;
  hi_bits = 0xfffffffful;


  SETS(network_rec_config_shadow, R_NETWORK_REC_CONFIG, individual, receive);
  *R_NETWORK_REC_CONFIG = network_rec_config_shadow;
 } else if (dev->flags & IFF_ALLMULTI) {

  lo_bits = 0xfffffffful;
  hi_bits = 0xfffffffful;


  SETS(network_rec_config_shadow, R_NETWORK_REC_CONFIG, individual, discard);
  *R_NETWORK_REC_CONFIG = network_rec_config_shadow;
 } else if (num_addr == 0) {

  lo_bits = 0x00000000ul;
  hi_bits = 0x00000000ul;


  SETS(network_rec_config_shadow, R_NETWORK_REC_CONFIG, individual, discard);
  *R_NETWORK_REC_CONFIG = network_rec_config_shadow;
 } else {

  char hash_ix;
  struct dev_mc_list *dmi = dev->mc_list;
  int i;
  char *baddr;

  lo_bits = 0x00000000ul;
  hi_bits = 0x00000000ul;
  for (i = 0; i < num_addr; i++) {


   hash_ix = 0;
   baddr = dmi->dmi_addr;
   hash_ix ^= (*baddr) & 0x3f;
   hash_ix ^= ((*baddr) >> 6) & 0x03;
   ++baddr;
   hash_ix ^= ((*baddr) << 2) & 0x03c;
   hash_ix ^= ((*baddr) >> 4) & 0xf;
   ++baddr;
   hash_ix ^= ((*baddr) << 4) & 0x30;
   hash_ix ^= ((*baddr) >> 2) & 0x3f;
   ++baddr;
   hash_ix ^= (*baddr) & 0x3f;
   hash_ix ^= ((*baddr) >> 6) & 0x03;
   ++baddr;
   hash_ix ^= ((*baddr) << 2) & 0x03c;
   hash_ix ^= ((*baddr) >> 4) & 0xf;
   ++baddr;
   hash_ix ^= ((*baddr) << 4) & 0x30;
   hash_ix ^= ((*baddr) >> 2) & 0x3f;

   hash_ix &= 0x3f;

   if (hash_ix >= 32) {
    hi_bits |= (1 << (hash_ix-32));
   } else {
    lo_bits |= (1 << hash_ix);
   }
   dmi = dmi->next;
  }

  SETS(network_rec_config_shadow, R_NETWORK_REC_CONFIG, individual, discard);
  *R_NETWORK_REC_CONFIG = network_rec_config_shadow;
 }
 *R_NETWORK_GA_0 = lo_bits;
 *R_NETWORK_GA_1 = hi_bits;
 spin_unlock(&lp->lock);
}
