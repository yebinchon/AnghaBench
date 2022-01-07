
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ssb_mipscore {int nr_serial_ports; int serial_ports; TYPE_1__* dev; } ;
struct TYPE_6__ {scalar_t__ dev; } ;
struct TYPE_5__ {scalar_t__ dev; } ;
struct ssb_bus {TYPE_3__ chipco; TYPE_2__ extif; } ;
struct TYPE_4__ {struct ssb_bus* bus; } ;


 int ssb_chipco_serial_init (TYPE_3__*,int ) ;
 int ssb_extif_serial_init (TYPE_2__*,int ) ;

__attribute__((used)) static void ssb_mips_serial_init(struct ssb_mipscore *mcore)
{
 struct ssb_bus *bus = mcore->dev->bus;

 if (bus->extif.dev)
  mcore->nr_serial_ports = ssb_extif_serial_init(&bus->extif, mcore->serial_ports);
 else if (bus->chipco.dev)
  mcore->nr_serial_ports = ssb_chipco_serial_init(&bus->chipco, mcore->serial_ports);
 else
  mcore->nr_serial_ports = 0;
}
