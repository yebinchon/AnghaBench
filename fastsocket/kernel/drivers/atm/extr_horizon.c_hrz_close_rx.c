
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
typedef int rx_q_entry ;
struct TYPE_12__ {int rd_buf_type; int wr_buf_type; } ;
typedef TYPE_1__ rx_ch_desc ;
struct TYPE_13__ {size_t* spare_buffers; int mem_lock; int * rx_q_reset; int * rx_q_wrap; int * rx_q_entry; int noof_spare_buffers; } ;
typedef TYPE_2__ hrz_dev ;
struct TYPE_14__ {int * rx_q_entries; TYPE_1__* rx_descs; } ;
typedef int HDW ;


 int BUFFER_PTR_MASK ;
 int DBG_RX ;
 int DBG_VCC ;
 int DBG_WARN ;
 int FLUSH_RX_CHANNEL (TYPE_2__*,size_t) ;
 int PRINTD (int,char*,...) ;
 int RX_CHANNEL_DISABLED ;
 int RX_CHANNEL_IDLE ;
 int RX_CHANS ;
 int RX_QUEUE_WR_PTR_OFF ;
 int SELECT_RX_CHANNEL (TYPE_2__*,size_t) ;
 int SIMONS_DODGEY_MARKER ;
 int WAIT_FLUSH_RX_COMPLETE (TYPE_2__*) ;
 int WAIT_UPDATE_COMPLETE (TYPE_2__*) ;
 TYPE_6__* memmap ;
 int rd_mem (TYPE_2__*,int *) ;
 size_t rd_regw (TYPE_2__*,int ) ;
 size_t rx_q_entry_to_rx_channel (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_mem (TYPE_2__*,int *,int) ;

__attribute__((used)) static void hrz_close_rx (hrz_dev * dev, u16 vc) {
  unsigned long flags;

  u32 value;

  u32 r1, r2;

  rx_ch_desc * rx_desc = &memmap->rx_descs[vc];

  int was_idle = 0;

  spin_lock_irqsave (&dev->mem_lock, flags);
  value = rd_mem (dev, &rx_desc->wr_buf_type) & BUFFER_PTR_MASK;
  spin_unlock_irqrestore (&dev->mem_lock, flags);

  if (value == RX_CHANNEL_DISABLED) {

    PRINTD (DBG_VCC, "closing VC: RX channel %u already disabled", vc);
    return;
  }
  if (value == RX_CHANNEL_IDLE)
    was_idle = 1;

  spin_lock_irqsave (&dev->mem_lock, flags);

  for (;;) {
    wr_mem (dev, &rx_desc->wr_buf_type, RX_CHANNEL_DISABLED);

    if ((rd_mem (dev, &rx_desc->wr_buf_type) & BUFFER_PTR_MASK) == RX_CHANNEL_DISABLED)
      break;

    was_idle = 0;
  }

  if (was_idle) {
    spin_unlock_irqrestore (&dev->mem_lock, flags);
    return;
  }

  WAIT_FLUSH_RX_COMPLETE(dev);
  for (;;) {




    u16 other = vc^(RX_CHANS/2);

    SELECT_RX_CHANNEL (dev, other);
    WAIT_UPDATE_COMPLETE (dev);

    r1 = rd_mem (dev, &rx_desc->rd_buf_type);




    SELECT_RX_CHANNEL (dev, vc);
    WAIT_UPDATE_COMPLETE (dev);



    FLUSH_RX_CHANNEL (dev, vc);
    WAIT_FLUSH_RX_COMPLETE (dev);



    SELECT_RX_CHANNEL (dev, other);
    WAIT_UPDATE_COMPLETE (dev);

    r2 = rd_mem (dev, &rx_desc->rd_buf_type);

    PRINTD (DBG_VCC|DBG_RX, "r1 = %u, r2 = %u", r1, r2);

    if (r1 == r2) {
      dev->spare_buffers[dev->noof_spare_buffers++] = (u16)r1;
      break;
    }
  }
  spin_unlock_irqrestore (&dev->mem_lock, flags);

  return;
}
