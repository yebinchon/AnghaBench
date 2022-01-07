
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ prod; } ;


 scalar_t__ LGS8GXX_PROD_LGS8G75 ;
 int lgs8gxx_read_reg (struct lgs8gxx_state*,int,int*) ;
 int lgs8gxx_write_reg (struct lgs8gxx_state*,int,int) ;

__attribute__((used)) static void packet_counter_stop(struct lgs8gxx_state *priv)
{
 u8 t;

 if (priv->config->prod == LGS8GXX_PROD_LGS8G75) {
  lgs8gxx_read_reg(priv, 0x30, &t);
  t &= 0xE7;
  lgs8gxx_write_reg(priv, 0x30, t);
 } else {
  lgs8gxx_write_reg(priv, 0xC6, 0x81);
 }
}
