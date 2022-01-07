
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int txstatus_tasklet; } ;


 scalar_t__ rt2800pci_txdone (struct rt2x00_dev*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void rt2800pci_txstatus_tasklet(unsigned long data)
{
 struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
 if (rt2800pci_txdone(rt2x00dev))
  tasklet_schedule(&rt2x00dev->txstatus_tasklet);






}
