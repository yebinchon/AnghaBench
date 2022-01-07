
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP_SMS_REGADDR (int ) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static inline void sms_write_reg(u32 val, u16 reg)
{
 __raw_writel(val, OMAP_SMS_REGADDR(reg));
}
