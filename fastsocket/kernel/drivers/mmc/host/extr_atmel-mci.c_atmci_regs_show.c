
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct atmel_mci* private; } ;
struct atmel_mci {int lock; int mck; int regs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MCI_ARGR ;
 int MCI_BLKR ;
 int MCI_DTOR ;
 int MCI_IMR ;
 int MCI_MR ;
 int MCI_MR_RDPROOF ;
 int MCI_MR_WRPROOF ;
 int MCI_REGS_SIZE ;
 int MCI_SDCR ;
 int MCI_SR ;
 int atmci_show_status_reg (struct seq_file*,char*,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int memcpy_fromio (int*,int ,int ) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int atmci_regs_show(struct seq_file *s, void *v)
{
 struct atmel_mci *host = s->private;
 u32 *buf;

 buf = kmalloc(MCI_REGS_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;






 spin_lock_bh(&host->lock);
 clk_enable(host->mck);
 memcpy_fromio(buf, host->regs, MCI_REGS_SIZE);
 clk_disable(host->mck);
 spin_unlock_bh(&host->lock);

 seq_printf(s, "MR:\t0x%08x%s%s CLKDIV=%u\n",
   buf[MCI_MR / 4],
   buf[MCI_MR / 4] & MCI_MR_RDPROOF ? " RDPROOF" : "",
   buf[MCI_MR / 4] & MCI_MR_WRPROOF ? " WRPROOF" : "",
   buf[MCI_MR / 4] & 0xff);
 seq_printf(s, "DTOR:\t0x%08x\n", buf[MCI_DTOR / 4]);
 seq_printf(s, "SDCR:\t0x%08x\n", buf[MCI_SDCR / 4]);
 seq_printf(s, "ARGR:\t0x%08x\n", buf[MCI_ARGR / 4]);
 seq_printf(s, "BLKR:\t0x%08x BCNT=%u BLKLEN=%u\n",
   buf[MCI_BLKR / 4],
   buf[MCI_BLKR / 4] & 0xffff,
   (buf[MCI_BLKR / 4] >> 16) & 0xffff);



 atmci_show_status_reg(s, "SR", buf[MCI_SR / 4]);
 atmci_show_status_reg(s, "IMR", buf[MCI_IMR / 4]);

 kfree(buf);

 return 0;
}
