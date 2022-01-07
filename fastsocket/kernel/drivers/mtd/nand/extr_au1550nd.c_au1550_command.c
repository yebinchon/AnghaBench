
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u8 ;
struct nand_chip {int options; int chipsize; int chip_delay; int (* dev_ready ) (struct mtd_info*) ;} ;
struct mtd_info {int writesize; struct nand_chip* priv; } ;


 int NAND_BUSWIDTH_16 ;
 int NAND_CTL_CLRALE ;
 int NAND_CTL_CLRCLE ;
 int NAND_CTL_CLRNCE ;
 int NAND_CTL_SETALE ;
 int NAND_CTL_SETCLE ;
 int NAND_CTL_SETNCE ;
 int au1550_hwcontrol (struct mtd_info*,int ) ;
 int au1550_write_byte (struct mtd_info*,int) ;
 int local_irq_restore (int ) ;
 int local_irq_save (int ) ;
 int ndelay (int) ;
 int stub1 (struct mtd_info*) ;
 int stub2 (struct mtd_info*) ;
 int udelay (int) ;
 int unlikely (int) ;

__attribute__((used)) static void au1550_command(struct mtd_info *mtd, unsigned command, int column, int page_addr)
{
 register struct nand_chip *this = mtd->priv;
 int ce_override = 0, i;
 ulong flags;


 au1550_hwcontrol(mtd, NAND_CTL_SETCLE);



 if (command == 129) {
  int readcmd;

  if (column >= mtd->writesize) {

   column -= mtd->writesize;
   readcmd = 131;
  } else if (column < 256) {

   readcmd = 133;
  } else {
   column -= 256;
   readcmd = 132;
  }
  au1550_write_byte(mtd, readcmd);
 }
 au1550_write_byte(mtd, command);


 au1550_hwcontrol(mtd, NAND_CTL_CLRCLE);

 if (column != -1 || page_addr != -1) {
  au1550_hwcontrol(mtd, NAND_CTL_SETALE);


  if (column != -1) {

   if (this->options & NAND_BUSWIDTH_16)
    column >>= 1;
   au1550_write_byte(mtd, column);
  }
  if (page_addr != -1) {
   au1550_write_byte(mtd, (u8)(page_addr & 0xff));

   if (command == 133 ||
       command == 132 ||
       command == 131) {
    ce_override = 1;
    local_irq_save(flags);
    au1550_hwcontrol(mtd, NAND_CTL_SETNCE);
   }

   au1550_write_byte(mtd, (u8)(page_addr >> 8));


   if (this->chipsize > (32 << 20))
    au1550_write_byte(mtd, (u8)((page_addr >> 16) & 0x0f));
  }

  au1550_hwcontrol(mtd, NAND_CTL_CLRALE);
 }





 switch (command) {

 case 134:
 case 136:
 case 135:
 case 129:
 case 128:
  return;

 case 130:
  break;

 case 133:
 case 132:
 case 131:

  if (unlikely(!ce_override))
   break;


  ndelay(100);

  for (i = this->chip_delay; !this->dev_ready(mtd) && i > 0; --i)
   udelay(1);


  au1550_hwcontrol(mtd, NAND_CTL_CLRNCE);
  local_irq_restore(flags);
  return;
 }

 ndelay(100);

 while(!this->dev_ready(mtd));
}
