
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int dataPort ;
 int outb_p (int ,int ) ;
 int regPort ;

__attribute__((used)) static void outReg(u8 data, u8 reg)
{
 outb_p(reg, regPort);
 outb_p(data, dataPort);
}
