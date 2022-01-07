
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct concap_proto {TYPE_1__* proto_data; scalar_t__ flags; int * pops; int * net_dev; int * dops; int lock; } ;
struct TYPE_3__ {struct concap_proto priv; int state; int magic; } ;
typedef TYPE_1__ ix25_pdata_t ;


 int GFP_KERNEL ;
 int ISDN_X25IFACE_MAGIC ;
 int IX25DEBUG (char*) ;
 int WAN_UNCONFIGURED ;
 int ix25_pops ;
 TYPE_1__* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct concap_proto * isdn_x25iface_proto_new(void)
{
 ix25_pdata_t * tmp = kmalloc(sizeof(ix25_pdata_t),GFP_KERNEL);
 IX25DEBUG("isdn_x25iface_proto_new\n");
 if( tmp ){
  tmp -> magic = ISDN_X25IFACE_MAGIC;
  tmp -> state = WAN_UNCONFIGURED;


  spin_lock_init(&tmp->priv.lock);
  tmp -> priv.dops = ((void*)0);
  tmp -> priv.net_dev = ((void*)0);
  tmp -> priv.pops = &ix25_pops;
  tmp -> priv.flags = 0;
  tmp -> priv.proto_data = tmp;
  return( &(tmp -> priv) );
 }
 return ((void*)0);
}
