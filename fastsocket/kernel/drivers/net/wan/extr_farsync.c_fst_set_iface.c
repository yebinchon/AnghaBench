
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int clock_type; int clock_rate; scalar_t__ loopback; } ;
typedef TYPE_3__ sync_serial_settings ;
typedef int sync ;
struct TYPE_6__ {int sync; } ;
struct TYPE_7__ {int size; int type; TYPE_1__ ifs_ifsu; } ;
struct ifreq {TYPE_2__ ifr_settings; } ;
struct fst_port_info {int index; void* hwif; } ;
struct fst_card_info {int dummy; } ;
struct TYPE_9__ {int lineSpeed; int internalClock; int lineInterface; } ;




 void* E1 ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EXTCLK ;
 int FST_WRB (struct fst_card_info*,int ,int ) ;
 int FST_WRL (struct fst_card_info*,int ,int ) ;
 int FST_WRW (struct fst_card_info*,int ,void*) ;







 int INTCLK ;
 void* T1 ;
 void* V24 ;
 void* V35 ;
 void* X21 ;
 void* X21D ;
 scalar_t__ copy_from_user (TYPE_3__*,int ,int) ;
 TYPE_4__* portConfig ;

__attribute__((used)) static int
fst_set_iface(struct fst_card_info *card, struct fst_port_info *port,
       struct ifreq *ifr)
{
 sync_serial_settings sync;
 int i;

 if (ifr->ifr_settings.size != sizeof (sync)) {
  return -ENOMEM;
 }

 if (copy_from_user
     (&sync, ifr->ifr_settings.ifs_ifsu.sync, sizeof (sync))) {
  return -EFAULT;
 }

 if (sync.loopback)
  return -EINVAL;

 i = port->index;

 switch (ifr->ifr_settings.type) {
 case 130:
  FST_WRW(card, portConfig[i].lineInterface, V35);
  port->hwif = V35;
  break;

 case 131:
  FST_WRW(card, portConfig[i].lineInterface, V24);
  port->hwif = V24;
  break;

 case 129:
  FST_WRW(card, portConfig[i].lineInterface, X21);
  port->hwif = X21;
  break;

 case 128:
  FST_WRW(card, portConfig[i].lineInterface, X21D);
  port->hwif = X21D;
  break;

 case 132:
  FST_WRW(card, portConfig[i].lineInterface, T1);
  port->hwif = T1;
  break;

 case 134:
  FST_WRW(card, portConfig[i].lineInterface, E1);
  port->hwif = E1;
  break;

 case 133:
  break;

 default:
  return -EINVAL;
 }

 switch (sync.clock_type) {
 case 136:
  FST_WRB(card, portConfig[i].internalClock, EXTCLK);
  break;

 case 135:
  FST_WRB(card, portConfig[i].internalClock, INTCLK);
  break;

 default:
  return -EINVAL;
 }
 FST_WRL(card, portConfig[i].lineSpeed, sync.clock_rate);
 return 0;
}
