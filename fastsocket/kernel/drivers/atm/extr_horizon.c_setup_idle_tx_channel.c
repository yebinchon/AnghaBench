
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_12__ {int cell_header; int wr_buf_type; int rd_buf_type; int partial_crc; } ;
typedef TYPE_1__ tx_ch_desc ;
struct TYPE_13__ {int channel; scalar_t__ tx_xbr_bits; scalar_t__ tx_pcr_bits; scalar_t__ tx_scr_bits; scalar_t__ tx_bucket_bits; int aal; } ;
typedef TYPE_2__ hrz_vcc ;
struct TYPE_14__ {int tx_idle; int* tx_channel_record; int mem_lock; } ;
typedef TYPE_3__ hrz_dev ;
struct TYPE_11__ {TYPE_1__* tx_descs; } ;


 int BUCKET_CAPACITY_ACCESS ;
 int BUCKET_FULLNESS_ACCESS ;
 int BUFFER_PTR_MASK ;
 int CHANNEL_TYPE_AAL3_4 ;
 int CHANNEL_TYPE_AAL5 ;
 int CHANNEL_TYPE_RAW_CELLS ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_QOS ;
 int DBG_TX ;
 int DBG_WARN ;
 short EBUSY ;
 unsigned short IDLE_CHANNELS_MASK ;
 int INITIAL_CRC ;
 int PCR_TIMER_ACCESS ;
 int PRINTD (int,char*,...) ;
 int RATE_TYPE_ACCESS ;
 int SCR_TIMER_ACCESS ;
 int TX_CHANS ;
 int TX_STATUS_OFF ;
 scalar_t__ VBR_RATE_TYPE ;



 TYPE_10__* memmap ;
 int rd_mem (TYPE_3__*,int *) ;
 unsigned short rd_regw (TYPE_3__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_tx_channel_config (TYPE_3__*,short,int ,scalar_t__) ;
 int wr_mem (TYPE_3__*,int *,int) ;

__attribute__((used)) static short setup_idle_tx_channel (hrz_dev * dev, hrz_vcc * vcc) {
  unsigned short idle_channels;
  short tx_channel = -1;
  unsigned int spin_count;
  PRINTD (DBG_FLOW|DBG_TX, "setup_idle_tx_channel %p", dev);



  spin_count = 0;
  while (!(idle_channels = rd_regw (dev, TX_STATUS_OFF) & IDLE_CHANNELS_MASK)) {
    PRINTD (DBG_TX|DBG_WARN, "waiting for idle TX channel");

    if (++spin_count > 100) {
      PRINTD (DBG_TX|DBG_ERR, "spun out waiting for idle TX channel");
      return -EBUSY;
    }
  }


  {

    int chan = dev->tx_idle;

    int keep_going = 1;
    while (keep_going) {
      if (idle_channels & (1<<chan)) {
 tx_channel = chan;
 keep_going = 0;
      }
      ++chan;
      if (chan == TX_CHANS)
 chan = 0;
    }

    dev->tx_idle = chan;
  }


  {



    tx_ch_desc * tx_desc = &memmap->tx_descs[tx_channel];
    u32 rd_ptr;
    u32 wr_ptr;
    u16 channel = vcc->channel;

    unsigned long flags;
    spin_lock_irqsave (&dev->mem_lock, flags);


    dev->tx_channel_record[tx_channel] = channel;


    update_tx_channel_config (dev, tx_channel, RATE_TYPE_ACCESS,
         vcc->tx_xbr_bits);


    update_tx_channel_config (dev, tx_channel, PCR_TIMER_ACCESS,
         vcc->tx_pcr_bits);
    rd_ptr = rd_mem (dev, &tx_desc->rd_buf_type) & BUFFER_PTR_MASK;
    wr_ptr = rd_mem (dev, &tx_desc->wr_buf_type) & BUFFER_PTR_MASK;


    if (rd_ptr != wr_ptr) {
      PRINTD (DBG_TX|DBG_ERR, "TX buffer pointers are broken!");


    }
    PRINTD (DBG_TX, "TX buffer pointers are: rd %x, wr %x.",
     rd_ptr, wr_ptr);

    switch (vcc->aal) {
      case 130:
 PRINTD (DBG_QOS|DBG_TX, "tx_channel: aal0");
 rd_ptr |= CHANNEL_TYPE_RAW_CELLS;
 wr_ptr |= CHANNEL_TYPE_RAW_CELLS;
 break;
      case 129:
 PRINTD (DBG_QOS|DBG_TX, "tx_channel: aal34");
 rd_ptr |= CHANNEL_TYPE_AAL3_4;
 wr_ptr |= CHANNEL_TYPE_AAL3_4;
 break;
      case 128:
 rd_ptr |= CHANNEL_TYPE_AAL5;
 wr_ptr |= CHANNEL_TYPE_AAL5;

 wr_mem (dev, &tx_desc->partial_crc, INITIAL_CRC);
 break;
    }

    wr_mem (dev, &tx_desc->rd_buf_type, rd_ptr);
    wr_mem (dev, &tx_desc->wr_buf_type, wr_ptr);



    wr_mem (dev, &tx_desc->cell_header, channel);

    spin_unlock_irqrestore (&dev->mem_lock, flags);
  }

  return tx_channel;
}
