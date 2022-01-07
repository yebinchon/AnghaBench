
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {int dummy; } ;
struct cb710_slot {scalar_t__ iobase; } ;


 scalar_t__ CB710_MMC_DATA_PORT ;
 int CB710_MMC_S1_PIO_TRANSFER_DONE ;
 int CB710_MMC_S2_FIFO_READY ;
 int CB710_MMC_STATUS2_PORT ;
 int cb710_read_port_8 (struct cb710_slot*,int ) ;
 int cb710_sg_dwiter_write_from_io (struct sg_mapping_iter*,scalar_t__,size_t) ;
 int cb710_wait_for_event (struct cb710_slot*,int ) ;

__attribute__((used)) static int cb710_mmc_receive_pio(struct cb710_slot *slot,
 struct sg_mapping_iter *miter, size_t dw_count)
{
 if (!(cb710_read_port_8(slot, CB710_MMC_STATUS2_PORT) & CB710_MMC_S2_FIFO_READY)) {
  int err = cb710_wait_for_event(slot,
   CB710_MMC_S1_PIO_TRANSFER_DONE);
  if (err)
   return err;
 }

 cb710_sg_dwiter_write_from_io(miter,
  slot->iobase + CB710_MMC_DATA_PORT, dw_count);

 return 0;
}
