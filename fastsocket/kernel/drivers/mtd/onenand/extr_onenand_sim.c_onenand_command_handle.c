
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int chipsize; int page_shift; scalar_t__ base; int erase_shift; } ;


 int ONENAND_BSA_DATARAM1 ;
 int ONENAND_BSA_SHIFT ;

 int ONENAND_CMD_ERASE ;




 int ONENAND_DDP_SHIFT ;
 int ONENAND_FPA_SHIFT ;
 scalar_t__ ONENAND_REG_START_ADDRESS1 ;
 scalar_t__ ONENAND_REG_START_ADDRESS8 ;
 scalar_t__ ONENAND_REG_START_BUFFER ;
 unsigned long onenand_addr (struct onenand_chip*,int) ;
 int onenand_data_handle (struct onenand_chip*,int,int,unsigned long) ;
 int onenand_lock_handle (struct onenand_chip*,int) ;
 int onenand_update_interrupt (struct onenand_chip*,int) ;
 scalar_t__ readw (scalar_t__) ;

__attribute__((used)) static void onenand_command_handle(struct onenand_chip *this, int cmd)
{
 unsigned long offset = 0;
 int block = -1, page = -1, bufferram = -1;
 int dataram = 0;

 switch (cmd) {
 case 129:
 case 131:
 case 130:
 case 128:
  onenand_lock_handle(this, cmd);
  break;

 case 132:

  return;

 default:
  block = (int) readw(this->base + ONENAND_REG_START_ADDRESS1);
  if (block & (1 << ONENAND_DDP_SHIFT)) {
   block &= ~(1 << ONENAND_DDP_SHIFT);

   block += this->chipsize >> (this->erase_shift + 1);
  }
  if (cmd == ONENAND_CMD_ERASE)
   break;

  page = (int) readw(this->base + ONENAND_REG_START_ADDRESS8);
  page = (page >> ONENAND_FPA_SHIFT);
  bufferram = (int) readw(this->base + ONENAND_REG_START_BUFFER);
  bufferram >>= ONENAND_BSA_SHIFT;
  bufferram &= ONENAND_BSA_DATARAM1;
  dataram = (bufferram == ONENAND_BSA_DATARAM1) ? 1 : 0;
  break;
 }

 if (block != -1)
  offset = onenand_addr(this, block);

 if (page != -1)
  offset += page << this->page_shift;

 onenand_data_handle(this, cmd, dataram, offset);

 onenand_update_interrupt(this, cmd);
}
