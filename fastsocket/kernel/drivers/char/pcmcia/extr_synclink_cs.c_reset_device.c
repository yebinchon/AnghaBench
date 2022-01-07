
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MGSLPC_INFO ;


 scalar_t__ CCR0 ;
 scalar_t__ CHA ;
 scalar_t__ CHB ;
 scalar_t__ IPC ;
 scalar_t__ MODE ;
 scalar_t__ PCR ;
 int irq_disable (int *,scalar_t__,int) ;
 int port_irq_disable (int *,int) ;
 int write_reg (int *,scalar_t__,int) ;

__attribute__((used)) static void reset_device(MGSLPC_INFO *info)
{

 write_reg(info, CHA + CCR0, 0x80);
 write_reg(info, CHB + CCR0, 0x80);
 write_reg(info, CHA + MODE, 0);
 write_reg(info, CHB + MODE, 0);


 irq_disable(info, CHA, 0xffff);
 irq_disable(info, CHB, 0xffff);
 port_irq_disable(info, 0xff);
 write_reg(info, PCR, 0x06);
 write_reg(info, IPC, 0x05);
}
