
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc5000_priv {int dummy; } ;
struct dvb_frontend {struct xc5000_priv* tuner_priv; } ;


 int XC_RESULT_SUCCESS ;
 int XC_RF_MODE_CABLE ;
 int XREG_SIGNALSOURCE ;
 int xc5000_fwupload (struct dvb_frontend*) ;
 int xc5000_is_firmware_loaded (struct dvb_frontend*) ;
 int xc_initialize (struct xc5000_priv*) ;
 int xc_wait (int) ;
 int xc_write_reg (struct xc5000_priv*,int ,int ) ;

__attribute__((used)) static int xc_load_fw_and_init_tuner(struct dvb_frontend *fe)
{
 struct xc5000_priv *priv = fe->tuner_priv;
 int ret = 0;

 if (xc5000_is_firmware_loaded(fe) != XC_RESULT_SUCCESS) {
  ret = xc5000_fwupload(fe);
  if (ret != XC_RESULT_SUCCESS)
   return ret;
 }


 ret |= xc_initialize(priv);






 xc_wait(100);


 ret |= xc_write_reg(priv, XREG_SIGNALSOURCE, XC_RF_MODE_CABLE);

 return ret;
}
