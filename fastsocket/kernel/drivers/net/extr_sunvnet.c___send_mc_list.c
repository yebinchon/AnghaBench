
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnet_port {int vio; } ;
struct vnet_mcast_entry {int sent; struct vnet_mcast_entry* next; int addr; scalar_t__ hit; } ;
struct vnet {struct vnet_mcast_entry* mcast_list; } ;
struct TYPE_2__ {int sid; int stype_env; int stype; int type; } ;
struct vio_net_mcast_info {int set; int count; int * mcast_addr; TYPE_1__ tag; } ;
typedef int info ;


 int ETH_ALEN ;
 int VIO_SUBTYPE_INFO ;
 int VIO_TYPE_CTRL ;
 int VNET_MCAST_INFO ;
 int VNET_NUM_MCAST ;
 int kfree (struct vnet_mcast_entry*) ;
 int memcpy (int *,int ,int) ;
 int memset (struct vio_net_mcast_info*,int ,int) ;
 int vio_ldc_send (int *,struct vio_net_mcast_info*,int) ;
 int vio_send_sid (int *) ;

__attribute__((used)) static void __send_mc_list(struct vnet *vp, struct vnet_port *port)
{
 struct vio_net_mcast_info info;
 struct vnet_mcast_entry *m, **pp;
 int n_addrs;

 memset(&info, 0, sizeof(info));

 info.tag.type = VIO_TYPE_CTRL;
 info.tag.stype = VIO_SUBTYPE_INFO;
 info.tag.stype_env = VNET_MCAST_INFO;
 info.tag.sid = vio_send_sid(&port->vio);
 info.set = 1;

 n_addrs = 0;
 for (m = vp->mcast_list; m; m = m->next) {
  if (m->sent)
   continue;
  m->sent = 1;
  memcpy(&info.mcast_addr[n_addrs * ETH_ALEN],
         m->addr, ETH_ALEN);
  if (++n_addrs == VNET_NUM_MCAST) {
   info.count = n_addrs;

   (void) vio_ldc_send(&port->vio, &info,
         sizeof(info));
   n_addrs = 0;
  }
 }
 if (n_addrs) {
  info.count = n_addrs;
  (void) vio_ldc_send(&port->vio, &info, sizeof(info));
 }

 info.set = 0;

 n_addrs = 0;
 pp = &vp->mcast_list;
 while ((m = *pp) != ((void*)0)) {
  if (m->hit) {
   m->hit = 0;
   pp = &m->next;
   continue;
  }

  memcpy(&info.mcast_addr[n_addrs * ETH_ALEN],
         m->addr, ETH_ALEN);
  if (++n_addrs == VNET_NUM_MCAST) {
   info.count = n_addrs;
   (void) vio_ldc_send(&port->vio, &info,
         sizeof(info));
   n_addrs = 0;
  }

  *pp = m->next;
  kfree(m);
 }
 if (n_addrs) {
  info.count = n_addrs;
  (void) vio_ldc_send(&port->vio, &info, sizeof(info));
 }
}
