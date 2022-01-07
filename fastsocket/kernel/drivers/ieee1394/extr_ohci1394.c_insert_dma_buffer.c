
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {int dummy; } ;
struct dma_rcv_ctx {int num_desc; int ctrlSet; int ctx; TYPE_1__** prg_cpu; int buf_size; scalar_t__ ohci; } ;
struct TYPE_2__ {int branchAddress; int status; } ;


 int DBGMSG (char*,int ,int) ;
 int KERN_INFO ;
 int PRINT (int ,char*,int ) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int) ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void insert_dma_buffer(struct dma_rcv_ctx *d, int idx)
{
 struct ti_ohci *ohci = (struct ti_ohci*)(d->ohci);
 DBGMSG("Inserting dma buf ctx=%d idx=%d", d->ctx, idx);

 d->prg_cpu[idx]->status = cpu_to_le32(d->buf_size);
 d->prg_cpu[idx]->branchAddress &= le32_to_cpu(0xfffffff0);
 idx = (idx + d->num_desc - 1 ) % d->num_desc;
 d->prg_cpu[idx]->branchAddress |= le32_to_cpu(0x00000001);



 wmb();


 if (!(reg_read(ohci, d->ctrlSet) & 0x400)) {
  PRINT(KERN_INFO,
        "Waking dma ctx=%d ... processing is probably too slow",
        d->ctx);
 }


 reg_write(ohci, d->ctrlSet, 0x1000);
}
