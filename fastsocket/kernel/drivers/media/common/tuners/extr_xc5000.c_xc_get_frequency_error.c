
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct xc5000_priv {int dummy; } ;


 int XC_RESULT_SUCCESS ;
 int XREG_FREQ_ERROR ;
 int xc5000_readreg (struct xc5000_priv*,int ,scalar_t__*) ;

__attribute__((used)) static int xc_get_frequency_error(struct xc5000_priv *priv, u32 *freq_error_hz)
{
 int result;
 u16 regData;
 u32 tmp;

 result = xc5000_readreg(priv, XREG_FREQ_ERROR, &regData);
 if (result != XC_RESULT_SUCCESS)
  return result;

 tmp = (u32)regData;
 (*freq_error_hz) = (tmp * 15625) / 1000;
 return result;
}
