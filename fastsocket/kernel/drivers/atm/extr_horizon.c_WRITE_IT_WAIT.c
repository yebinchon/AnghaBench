
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hrz_dev ;


 int CONTROL_0_REG ;
 int udelay (int) ;
 int wr_regl (int const*,int ,int ) ;

__attribute__((used)) static void WRITE_IT_WAIT (const hrz_dev *dev, u32 ctrl)
{
 wr_regl (dev, CONTROL_0_REG, ctrl);
 udelay (5);
}
