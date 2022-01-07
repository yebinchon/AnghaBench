
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgs8gxx_state {int dummy; } ;


 int lgs8gxx_read_reg (struct lgs8gxx_state*,int,int*) ;
 int lgs8gxx_write_reg (struct lgs8gxx_state*,int,int) ;

__attribute__((used)) static int lgs8913_init(struct lgs8gxx_state *priv)
{
 u8 t;


 lgs8gxx_write_reg(priv, 0xc1, 0x3);

 lgs8gxx_read_reg(priv, 0x7c, &t);
 lgs8gxx_write_reg(priv, 0x7c, (t&0x8c) | 0x3);


 lgs8gxx_read_reg(priv, 0xc3, &t);
 lgs8gxx_write_reg(priv, 0xc3, t&0x10);


 return 0;
}
