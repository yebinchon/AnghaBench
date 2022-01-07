
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_protocol {int dev; int protocol_list; } ;


 int device_unregister (int *) ;
 int list_del (int *) ;
 int pnp_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pnp_unregister_protocol(struct pnp_protocol *protocol)
{
 spin_lock(&pnp_lock);
 list_del(&protocol->protocol_list);
 spin_unlock(&pnp_lock);
 device_unregister(&protocol->dev);
}
