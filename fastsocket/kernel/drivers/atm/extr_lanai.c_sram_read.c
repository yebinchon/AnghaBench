
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_dev {int dummy; } ;


 int readl (int ) ;
 int sram_addr (struct lanai_dev const*,int) ;

__attribute__((used)) static inline u32 sram_read(const struct lanai_dev *lanai, int offset)
{
 return readl(sram_addr(lanai, offset));
}
