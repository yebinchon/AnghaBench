
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* clk_ctrl ;

__attribute__((used)) static void swift_clockstop(void)
{
 if (!clk_ctrl)
  return;
 clk_ctrl[0] = 0;
}
