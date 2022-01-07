
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {scalar_t__ aperegs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 tg3_ape_read32(struct tg3 *tp, u32 off)
{
 return readl(tp->aperegs + off);
}
