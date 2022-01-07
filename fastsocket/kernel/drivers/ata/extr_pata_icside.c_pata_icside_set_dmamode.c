
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pata_icside_state {TYPE_2__* port; } ;
struct ata_timing {int active; int recover; int cycle; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct ata_device {size_t devno; int dma_mode; } ;
struct TYPE_4__ {unsigned int* speed; } ;
struct TYPE_3__ {struct pata_icside_state* private_data; } ;


 int KERN_INFO ;
 int ata_dev_printk (struct ata_device*,int ,char*,int,int,int,char) ;
 scalar_t__ ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;

__attribute__((used)) static void pata_icside_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 struct pata_icside_state *state = ap->host->private_data;
 struct ata_timing t;
 unsigned int cycle;
 char iomd_type;




 if (ata_timing_compute(adev, adev->dma_mode, &t, 1000, 1))
  return;





 if (t.active <= 50 && t.recover <= 375 && t.cycle <= 425)
  iomd_type = 'D', cycle = 187;
 else if (t.active <= 125 && t.recover <= 375 && t.cycle <= 500)
  iomd_type = 'C', cycle = 250;
 else if (t.active <= 200 && t.recover <= 550 && t.cycle <= 750)
  iomd_type = 'B', cycle = 437;
 else
  iomd_type = 'A', cycle = 562;

 ata_dev_printk(adev, KERN_INFO, "timings: act %dns rec %dns cyc %dns (%c)\n",
  t.active, t.recover, t.cycle, iomd_type);

 state->port[ap->port_no].speed[adev->devno] = cycle;
}
