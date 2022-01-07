
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cmac {int adapter; } ;


 int CH_DBG (int ,int ,char*,int ) ;
 int INTR ;
 int SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS ;
 int pm3393_interrupt_clear (struct cmac*) ;
 int pmread (struct cmac*,int ,int *) ;

__attribute__((used)) static int pm3393_interrupt_handler(struct cmac *cmac)
{
 u32 master_intr_status;


 pmread(cmac, SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS,
        &master_intr_status);
 CH_DBG(cmac->adapter, INTR, "PM3393 intr cause 0x%x\n",
        master_intr_status);


 pm3393_interrupt_clear(cmac);

 return 0;
}
