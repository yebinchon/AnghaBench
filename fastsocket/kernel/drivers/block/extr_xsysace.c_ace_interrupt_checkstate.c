
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ace_device {int dev; } ;


 int ACE_CTRL ;
 int ACE_CTRL_ERRORIRQ ;
 int ACE_STATUS ;
 int ACE_STATUS_CFCERROR ;
 int ACE_STATUS_CFGERROR ;
 int EIO ;
 int ace_dump_regs (struct ace_device*) ;
 int ace_in (struct ace_device*,int ) ;
 int ace_in32 (struct ace_device*,int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int ace_interrupt_checkstate(struct ace_device *ace)
{
 u32 sreg = ace_in32(ace, ACE_STATUS);
 u16 creg = ace_in(ace, ACE_CTRL);


 if ((sreg & (ACE_STATUS_CFGERROR | ACE_STATUS_CFCERROR)) &&
     (creg & ACE_CTRL_ERRORIRQ)) {
  dev_err(ace->dev, "transfer failure\n");
  ace_dump_regs(ace);
  return -EIO;
 }

 return 0;
}
