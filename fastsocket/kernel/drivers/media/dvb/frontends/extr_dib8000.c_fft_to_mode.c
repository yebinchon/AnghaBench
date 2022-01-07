
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int transmission_mode; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;
struct dib8000_state {TYPE_2__ fe; } ;







__attribute__((used)) static u16 fft_to_mode(struct dib8000_state *state)
{
 u16 mode;
 switch (state->fe.dtv_property_cache.transmission_mode) {
 case 131:
  mode = 1;
  break;
 case 130:
  mode = 2;
  break;
 default:
 case 128:
 case 129:
  mode = 3;
  break;
 }
 return mode;
}
