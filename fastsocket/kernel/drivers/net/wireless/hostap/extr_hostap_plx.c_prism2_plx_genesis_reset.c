
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hostap_plx_priv {int cor_offset; int * attr_mem; } ;
struct TYPE_3__ {struct hostap_plx_priv* hw_priv; } ;
typedef TYPE_1__ local_info_t ;


 unsigned char COR_SRESET ;
 unsigned char inb (int) ;
 int mdelay (int) ;
 int outb (unsigned char,int) ;
 unsigned char readb (int *) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void prism2_plx_genesis_reset(local_info_t *local, int hcr)
{
 unsigned char corsave;
 struct hostap_plx_priv *hw_priv = local->hw_priv;

 if (hw_priv->attr_mem == ((void*)0)) {

  corsave = inb(hw_priv->cor_offset);
  outb(corsave | COR_SRESET, hw_priv->cor_offset);
  mdelay(10);
  outb(hcr, hw_priv->cor_offset + 2);
  mdelay(10);
  outb(corsave & ~COR_SRESET, hw_priv->cor_offset);
  mdelay(10);
 } else {

  corsave = readb(hw_priv->attr_mem + hw_priv->cor_offset);
  writeb(corsave | COR_SRESET,
         hw_priv->attr_mem + hw_priv->cor_offset);
  mdelay(10);
  writeb(hcr, hw_priv->attr_mem + hw_priv->cor_offset + 2);
  mdelay(10);
  writeb(corsave & ~COR_SRESET,
         hw_priv->attr_mem + hw_priv->cor_offset);
  mdelay(10);
 }
}
