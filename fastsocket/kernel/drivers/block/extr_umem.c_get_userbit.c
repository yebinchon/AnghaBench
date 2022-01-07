
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardinfo {scalar_t__ csr_remap; } ;


 scalar_t__ MEMCTRLCMD_LEDCTRL ;
 unsigned char readb (scalar_t__) ;

__attribute__((used)) static int get_userbit(struct cardinfo *card, int bit)
{
 unsigned char led;

 led = readb(card->csr_remap + MEMCTRLCMD_LEDCTRL);
 return led & bit;
}
