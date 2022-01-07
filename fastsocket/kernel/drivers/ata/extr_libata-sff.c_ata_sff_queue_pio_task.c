
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int sff_pio_task; } ;


 int ata_sff_wq ;
 int msecs_to_jiffies (unsigned long) ;
 int queue_delayed_work (int ,int *,int ) ;

void ata_sff_queue_pio_task(struct ata_port *ap, unsigned long delay)
{

 queue_delayed_work(ata_sff_wq, &ap->sff_pio_task,
      msecs_to_jiffies(delay));
}
