
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int I_CF_H_0 ;
 int I_CF_L_0 ;
 int ReadReg (int ,int ) ;
 int WriteReg (int ,int ,int) ;
 int WriteRegBit (int ,int ,int,int) ;

__attribute__((used)) static void SetMIR(__u16 BaseAddr, __u8 val)
{
 __u8 tmp;

 WriteRegBit(BaseAddr, I_CF_H_0, 5, 0);
 tmp = ReadReg(BaseAddr, I_CF_L_0);
 WriteReg(BaseAddr, I_CF_L_0, tmp & 0x8f);
 WriteRegBit(BaseAddr, I_CF_L_0, 5, val);
}
