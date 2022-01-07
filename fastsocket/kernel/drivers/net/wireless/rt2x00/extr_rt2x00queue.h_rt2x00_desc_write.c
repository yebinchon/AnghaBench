
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 int _rt2x00_desc_write (int *,int const,int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void rt2x00_desc_write(__le32 *desc, const u8 word, u32 value)
{
 _rt2x00_desc_write(desc, word, cpu_to_le32(value));
}
