
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int __le32 ;



__attribute__((used)) static inline void _rt2x00_desc_write(__le32 *desc, const u8 word, __le32 value)
{
 desc[word] = value;
}
