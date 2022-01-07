
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int TG3PCI_MEM_WIN_BASE_ADDR ;
 int tg3_enable_register_access (struct tg3*) ;
 int tg3_poll_fw (struct tg3*) ;
 int tg3_reset_hw (struct tg3*,int) ;
 int tg3_switch_clocks (struct tg3*) ;
 int tw32 (int ,int ) ;

__attribute__((used)) static int tg3_init_hw(struct tg3 *tp, bool reset_phy)
{




 tg3_enable_register_access(tp);
 tg3_poll_fw(tp);

 tg3_switch_clocks(tp);

 tw32(TG3PCI_MEM_WIN_BASE_ADDR, 0);

 return tg3_reset_hw(tp, reset_phy);
}
