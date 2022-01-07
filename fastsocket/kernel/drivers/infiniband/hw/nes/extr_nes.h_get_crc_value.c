
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nes_v4_quad {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int crc32c (int ,void*,int) ;

__attribute__((used)) static inline __le32 get_crc_value(struct nes_v4_quad *nes_quad)
{
 u32 crc_value;
 crc_value = crc32c(~0, (void *)nes_quad, sizeof (struct nes_v4_quad));
 return cpu_to_le32(crc_value);
}
