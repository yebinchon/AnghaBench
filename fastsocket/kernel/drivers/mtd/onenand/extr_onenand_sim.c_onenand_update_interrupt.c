
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {scalar_t__ base; } ;
 int ONENAND_INT_ERASE ;
 int ONENAND_INT_MASTER ;
 int ONENAND_INT_READ ;
 int ONENAND_INT_RESET ;
 int ONENAND_INT_WRITE ;
 scalar_t__ ONENAND_REG_INTERRUPT ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void onenand_update_interrupt(struct onenand_chip *this, int cmd)
{
 int interrupt = ONENAND_INT_MASTER;

 switch (cmd) {
 case 130:
 case 129:
  interrupt |= ONENAND_INT_READ;
  break;

 case 132:
 case 131:
  interrupt |= ONENAND_INT_WRITE;
  break;

 case 133:
  interrupt |= ONENAND_INT_ERASE;
  break;

 case 128:
  interrupt |= ONENAND_INT_RESET;
  break;

 default:
  break;
 }

 writew(interrupt, this->base + ONENAND_REG_INTERRUPT);
}
