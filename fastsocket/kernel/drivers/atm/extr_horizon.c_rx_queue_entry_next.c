
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int mem_lock; TYPE_1__* rx_q_reset; TYPE_1__* rx_q_entry; TYPE_1__* rx_q_wrap; } ;
typedef TYPE_2__ hrz_dev ;
struct TYPE_6__ {int entry; } ;


 int RX_QUEUE_RD_PTR_OFF ;
 int rd_mem (TYPE_2__*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wr_regw (TYPE_2__*,int ,int) ;

__attribute__((used)) static u32 rx_queue_entry_next (hrz_dev * dev) {
  u32 rx_queue_entry;
  spin_lock (&dev->mem_lock);
  rx_queue_entry = rd_mem (dev, &dev->rx_q_entry->entry);
  if (dev->rx_q_entry == dev->rx_q_wrap)
    dev->rx_q_entry = dev->rx_q_reset;
  else
    dev->rx_q_entry++;
  wr_regw (dev, RX_QUEUE_RD_PTR_OFF, dev->rx_q_entry - dev->rx_q_reset);
  spin_unlock (&dev->mem_lock);
  return rx_queue_entry;
}
