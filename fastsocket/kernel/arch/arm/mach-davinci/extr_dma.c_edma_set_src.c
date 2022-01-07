
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum fifo_width { ____Placeholder_fifo_width } fifo_width ;
typedef enum address_mode { ____Placeholder_address_mode } address_mode ;
typedef unsigned int dma_addr_t ;
struct TYPE_2__ {unsigned int num_slots; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 unsigned int EDMA_FWID ;
 int PARM_OPT ;
 int PARM_SRC ;
 int SAM ;
 TYPE_1__** edma_info ;
 unsigned int edma_parm_read (unsigned int,int ,unsigned int) ;
 int edma_parm_write (unsigned int,int ,unsigned int,unsigned int) ;

void edma_set_src(unsigned slot, dma_addr_t src_port,
    enum address_mode mode, enum fifo_width width)
{
 unsigned ctlr;

 ctlr = EDMA_CTLR(slot);
 slot = EDMA_CHAN_SLOT(slot);

 if (slot < edma_info[ctlr]->num_slots) {
  unsigned int i = edma_parm_read(ctlr, PARM_OPT, slot);

  if (mode) {

   i = (i & ~(EDMA_FWID)) | (SAM | ((width & 0x7) << 8));
  } else {

   i &= ~SAM;
  }
  edma_parm_write(ctlr, PARM_OPT, slot, i);



  edma_parm_write(ctlr, PARM_SRC, slot, src_port);
 }
}
