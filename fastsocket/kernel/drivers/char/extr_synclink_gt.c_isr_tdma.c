
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int pending_bh; int device_name; } ;


 int BH_TRANSMIT ;
 unsigned int BIT3 ;
 unsigned int BIT4 ;
 unsigned int BIT5 ;
 int DBGISR (char*) ;
 int TDCSR ;
 unsigned int rd_reg32 (struct slgt_info*,int ) ;
 int wr_reg32 (struct slgt_info*,int ,unsigned int) ;

__attribute__((used)) static void isr_tdma(struct slgt_info *info)
{
 unsigned int status = rd_reg32(info, TDCSR);

 DBGISR(("%s isr_tdma status=%08x\n", info->device_name, status));
 wr_reg32(info, TDCSR, status);

 if (status & (BIT5 + BIT4 + BIT3)) {


  info->pending_bh |= BH_TRANSMIT;
 }
}
