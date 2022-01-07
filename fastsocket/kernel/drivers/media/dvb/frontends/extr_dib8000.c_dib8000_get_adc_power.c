
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;
typedef int int32_t ;


 int dib8000_read32 (struct dib8000_state*,int) ;
 int* lut_1000ln_mant ;

int32_t dib8000_get_adc_power(struct dvb_frontend *fe, uint8_t mode)
{
    struct dib8000_state *state = fe->demodulator_priv;
    uint32_t ix = 0, tmp_val = 0, exp = 0, mant = 0;
    int32_t val;

    val = dib8000_read32(state, 384);

    if (mode) {
 tmp_val = val;
 while (tmp_val >>= 1)
  exp++;
 mant = (val * 1000 / (1<<exp));
 ix = (uint8_t)((mant-1000)/100);
 val = (lut_1000ln_mant[ix] + 693*(exp-20) - 6908);
 val = (val*256)/1000;
    }
    return val;
}
