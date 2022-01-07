
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lp; } ;
struct vnet_port {TYPE_1__ vio; } ;
struct vio_net_desc {int dummy; } ;
struct vio_dring_state {int entry_size; int ncookies; int cookies; } ;


 int ldc_put_dring_entry (int ,struct vio_net_desc*,int,int,int ,int ) ;

__attribute__((used)) static int put_rx_desc(struct vnet_port *port,
         struct vio_dring_state *dr,
         struct vio_net_desc *desc,
         u32 index)
{
 int err;

 err = ldc_put_dring_entry(port->vio.lp, desc, dr->entry_size,
      (index * dr->entry_size),
      dr->cookies, dr->ncookies);
 if (err < 0)
  return err;

 return 0;
}
