
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_i2c {int dummy; } ;


 int nv_mask (struct nouveau_i2c*,int,int,int) ;

__attribute__((used)) static void
auxch_fini(struct nouveau_i2c *aux, int ch)
{
 nv_mask(aux, 0x00e4e4 + (ch * 0x50), 0x00310000, 0x00000000);
}
