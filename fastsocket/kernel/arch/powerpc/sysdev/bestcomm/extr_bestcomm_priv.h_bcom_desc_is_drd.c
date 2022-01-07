
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BCOM_DESC_NOP ;
 int BCOM_LCD_MASK ;

__attribute__((used)) static inline int
bcom_desc_is_drd(u32 desc)
{
 return !(desc & BCOM_LCD_MASK) && desc != BCOM_DESC_NOP;
}
