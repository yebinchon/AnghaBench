
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int MII_TG3_DSP_ADDRESS ;
 int MII_TG3_DSP_RW_PORT ;
 int tg3_readphy (struct tg3*,int ,int *) ;
 int tg3_writephy (struct tg3*,int ,int ) ;

__attribute__((used)) static int tg3_phydsp_read(struct tg3 *tp, u32 reg, u32 *val)
{
 int err;

 err = tg3_writephy(tp, MII_TG3_DSP_ADDRESS, reg);
 if (!err)
  err = tg3_readphy(tp, MII_TG3_DSP_RW_PORT, val);

 return err;
}
