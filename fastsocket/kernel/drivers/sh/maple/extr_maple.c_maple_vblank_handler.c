
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct maple_device {int busy; } ;


 int MAPLE_COMMAND_DEVINFO ;
 int MAPLE_ENABLE ;
 scalar_t__ MAPLE_PNP_INTERVAL ;
 int MAPLE_PORTS ;
 int atomic_set (int *,int) ;
 struct maple_device** baseunits ;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 scalar_t__* checked ;
 int ctrl_outl (int ,int ) ;
 scalar_t__* empty ;
 scalar_t__ jiffies ;
 int list_empty (int *) ;
 int maple_add_packet (struct maple_device*,int ,int ,int ,int *) ;
 int maple_bus_type ;
 int maple_dma_done () ;
 scalar_t__ maple_pnp_time ;
 int maple_send () ;
 int maple_sentq ;
 int setup_maple_commands ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void maple_vblank_handler(struct work_struct *work)
{
 int x, locking;
 struct maple_device *mdev;

 if (!maple_dma_done())
  return;

 ctrl_outl(0, MAPLE_ENABLE);

 if (!list_empty(&maple_sentq))
  goto finish;





 bus_for_each_dev(&maple_bus_type, ((void*)0), ((void*)0),
  setup_maple_commands);

 if (time_after(jiffies, maple_pnp_time)) {




  for (x = 0; x < MAPLE_PORTS; x++) {
   if (checked[x] && empty[x]) {
    mdev = baseunits[x];
    if (!mdev)
     break;
    atomic_set(&mdev->busy, 1);
    locking = maple_add_packet(mdev, 0,
     MAPLE_COMMAND_DEVINFO, 0, ((void*)0));
    if (!locking)
     break;
    }
   }

  maple_pnp_time = jiffies + MAPLE_PNP_INTERVAL;
 }

finish:
 maple_send();
}
