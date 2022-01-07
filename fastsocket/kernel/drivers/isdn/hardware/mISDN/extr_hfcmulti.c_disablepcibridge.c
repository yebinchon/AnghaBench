
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int dummy; } ;


 int HFC_outb (struct hfc_multi*,int ,int) ;
 int R_BRG_PCM_CFG ;

inline void
disablepcibridge(struct hfc_multi *c)
{
 HFC_outb(c, R_BRG_PCM_CFG, (0x0 << 6) | 0x2);
}
