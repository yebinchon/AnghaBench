
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le32 ;


 int BIT (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline bool carl9170fw_supports(__le32 list, u8 feature)
{
 return le32_to_cpu(list) & BIT(feature);
}
