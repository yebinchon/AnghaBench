
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short DMAOR_AE ;
 unsigned short DMAOR_NMIF ;
 unsigned short dmaor_read_reg (int) ;
 int dmaor_write_reg (int,unsigned short) ;

__attribute__((used)) static void sh_dmae_ctl_stop(int id)
{
 unsigned short dmaor = dmaor_read_reg(id);

 dmaor &= ~(DMAOR_NMIF | DMAOR_AE);
 dmaor_write_reg(id, dmaor);
}
