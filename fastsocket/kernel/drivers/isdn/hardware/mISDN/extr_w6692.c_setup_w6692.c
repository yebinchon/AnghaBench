
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct w6692_hw {int name; scalar_t__ addr; TYPE_1__* bc; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int DEBUG_HW ;
 int EIO ;
 int ReadW6692 (struct w6692_hw*,int ) ;
 int W6692Version (struct w6692_hw*) ;
 int W_D_EXIM ;
 int W_D_EXIR ;
 int W_D_RSTA ;
 int W_IMASK ;
 int W_ISTA ;
 int debug ;
 int pr_info (char*,int ,scalar_t__,scalar_t__) ;
 int pr_notice (char*,int ,int ) ;
 int request_region (scalar_t__,int,int ) ;

__attribute__((used)) static int
setup_w6692(struct w6692_hw *card)
{
 u32 val;

 if (!request_region(card->addr, 256, card->name)) {
  pr_info("%s: config port %x-%x already in use\n", card->name,
         card->addr, card->addr + 255);
  return -EIO;
 }
 W6692Version(card);
 card->bc[0].addr = card->addr;
 card->bc[1].addr = card->addr + 0x40;
 val = ReadW6692(card, W_ISTA);
 if (debug & DEBUG_HW)
  pr_notice("%s ISTA=%02x\n", card->name, val);
 val = ReadW6692(card, W_IMASK);
 if (debug & DEBUG_HW)
  pr_notice("%s IMASK=%02x\n", card->name, val);
 val = ReadW6692(card, W_D_EXIR);
 if (debug & DEBUG_HW)
  pr_notice("%s D_EXIR=%02x\n", card->name, val);
 val = ReadW6692(card, W_D_EXIM);
 if (debug & DEBUG_HW)
  pr_notice("%s D_EXIM=%02x\n", card->name, val);
 val = ReadW6692(card, W_D_RSTA);
 if (debug & DEBUG_HW)
  pr_notice("%s D_RSTA=%02x\n", card->name, val);
 return 0;
}
