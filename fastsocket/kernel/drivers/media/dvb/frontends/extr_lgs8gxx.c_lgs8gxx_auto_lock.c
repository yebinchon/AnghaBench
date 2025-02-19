
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgs8gxx_state {int curr_gi; TYPE_1__* config; } ;
typedef scalar_t__ s8 ;
struct TYPE_2__ {scalar_t__ prod; } ;


 int CF_MASK ;



 scalar_t__ LGS8GXX_PROD_LGS8913 ;
 scalar_t__ LGS8GXX_PROD_LGS8G75 ;
 int LGS_FEC_MASK ;
 int SC_MASK ;
 int TIM_MASK ;
 int TIM_MIDDLE ;
 int dprintk (char*,...) ;
 scalar_t__ lgs8gxx_auto_detect (struct lgs8gxx_state*,int*,int*) ;
 int lgs8gxx_read_reg (struct lgs8gxx_state*,int,int*) ;
 int lgs8gxx_set_mode_manual (struct lgs8gxx_state*) ;
 int lgs8gxx_write_reg (struct lgs8gxx_state*,int,int) ;

__attribute__((used)) static void lgs8gxx_auto_lock(struct lgs8gxx_state *priv)
{
 s8 err;
 u8 gi = 0x2;
 u8 detected_param = 0;

 err = lgs8gxx_auto_detect(priv, &detected_param, &gi);

 if (err != 0) {
  dprintk("lgs8gxx_auto_detect failed\n");
 } else
  dprintk("detected param = 0x%02X\n", detected_param);


 if (priv->config->prod == LGS8GXX_PROD_LGS8913) {
  u8 inter_leave_len = detected_param & TIM_MASK ;

  inter_leave_len = (inter_leave_len == TIM_MIDDLE) ? 0x60 : 0x40;
  detected_param &= CF_MASK | SC_MASK | LGS_FEC_MASK;
  detected_param |= inter_leave_len;
 }
 if (priv->config->prod == LGS8GXX_PROD_LGS8G75) {
  u8 t;
  lgs8gxx_read_reg(priv, 0x19, &t);
  t &= 0x81;
  t |= detected_param << 1;
  lgs8gxx_write_reg(priv, 0x19, t);
 } else {
  lgs8gxx_write_reg(priv, 0x7D, detected_param);
  if (priv->config->prod == LGS8GXX_PROD_LGS8913)
   lgs8gxx_write_reg(priv, 0xC0, detected_param);
 }



 lgs8gxx_set_mode_manual(priv);

 switch (gi) {
 case 128:
  priv->curr_gi = 945; break;
 case 129:
  priv->curr_gi = 595; break;
 case 130:
  priv->curr_gi = 420; break;
 default:
  priv->curr_gi = 945; break;
 }
}
