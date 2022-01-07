
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tg3 {int dummy; } ;


 int TG3_EAV_REF_CLCK_LSB ;
 int TG3_EAV_REF_CLCK_MSB ;
 int tr32 (int ) ;

__attribute__((used)) static u64 tg3_refclk_read(struct tg3 *tp)
{
 u64 stamp = tr32(TG3_EAV_REF_CLCK_LSB);
 return stamp | (u64)tr32(TG3_EAV_REF_CLCK_MSB) << 32;
}
