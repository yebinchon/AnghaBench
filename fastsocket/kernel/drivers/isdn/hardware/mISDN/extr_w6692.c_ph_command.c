
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w6692_hw {int name; } ;


 int W_CIX ;
 int WriteW6692 (struct w6692_hw*,int ,int ) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void
ph_command(struct w6692_hw *card, u8 cmd)
{
 pr_debug("%s: ph_command %x\n", card->name, cmd);
 WriteW6692(card, W_CIX, cmd);
}
