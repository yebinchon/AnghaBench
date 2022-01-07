
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int dataPort ;
 int inb (int ) ;
 int outb_p (int ,int ) ;
 int regPort ;

__attribute__((used)) static inline u8 inReg(u8 reg)
{
 outb_p(reg, regPort);
 return inb(dataPort);
}
