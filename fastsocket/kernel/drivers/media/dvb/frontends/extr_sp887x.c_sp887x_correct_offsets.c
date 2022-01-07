
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sp887x_state {int dummy; } ;
struct TYPE_3__ {int bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; scalar_t__ inversion; TYPE_2__ u; } ;


 int BANDWIDTH_8_MHZ ;
 scalar_t__ INVERSION_ON ;
 int divide (int,int,int *,int*) ;
 int sp887x_writereg (struct sp887x_state*,int,int const) ;

__attribute__((used)) static void sp887x_correct_offsets (struct sp887x_state* state,
        struct dvb_frontend_parameters *p,
        int actual_freq)
{
 static const u32 srate_correction [] = { 1879617, 4544878, 8098561 };
 int bw_index = p->u.ofdm.bandwidth - BANDWIDTH_8_MHZ;
 int freq_offset = actual_freq - p->frequency;
 int sysclock = 61003;
 int ifreq = 36000000;
 int freq;
 int frequency_shift;

 if (p->inversion == INVERSION_ON)
  freq = ifreq - freq_offset;
 else
  freq = ifreq + freq_offset;

 divide(freq / 333, sysclock, ((void*)0), &frequency_shift);

 if (p->inversion == INVERSION_ON)
  frequency_shift = -frequency_shift;


 sp887x_writereg(state, 0x319, srate_correction[bw_index] >> 12);
 sp887x_writereg(state, 0x31a, srate_correction[bw_index] & 0xfff);


 sp887x_writereg(state, 0x309, frequency_shift >> 12);
 sp887x_writereg(state, 0x30a, frequency_shift & 0xfff);
}
