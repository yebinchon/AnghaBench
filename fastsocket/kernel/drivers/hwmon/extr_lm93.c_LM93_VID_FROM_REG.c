
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int vid_from_reg (int,int) ;

__attribute__((used)) static int LM93_VID_FROM_REG(u8 reg)
{
 return vid_from_reg((reg & 0x3f), 100);
}
