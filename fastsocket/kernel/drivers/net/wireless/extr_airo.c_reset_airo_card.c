
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; int name; struct airo_info* ml_priv; } ;
struct airo_info {int * fids; int flags; } ;


 int AIRO_DEF_MTU ;
 int FLAG_MPI ;
 int MAX_FIDS ;
 scalar_t__ SUCCESS ;
 int airo_print_err (int ,char*) ;
 int airo_print_info (int ,char*,int ) ;
 int enable_interrupts (struct airo_info*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ reset_card (struct net_device*,int) ;
 scalar_t__ setup_card (struct airo_info*,int ,int) ;
 int test_bit (int ,int *) ;
 int transmit_allocate (struct airo_info*,int ,int) ;

int reset_airo_card( struct net_device *dev )
{
 int i;
 struct airo_info *ai = dev->ml_priv;

 if (reset_card (dev, 1))
  return -1;

 if ( setup_card(ai, dev->dev_addr, 1 ) != SUCCESS ) {
  airo_print_err(dev->name, "MAC could not be enabled");
  return -1;
 }
 airo_print_info(dev->name, "MAC enabled %pM", dev->dev_addr);

 if (!test_bit(FLAG_MPI,&ai->flags))
  for( i = 0; i < MAX_FIDS; i++ )
   ai->fids[i] = transmit_allocate (ai,AIRO_DEF_MTU,i>=MAX_FIDS/2);

 enable_interrupts( ai );
 netif_wake_queue(dev);
 return 0;
}
