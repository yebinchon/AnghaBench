
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner_state {int bandwidth; int frequency; } ;
struct dvb_frontend {int dummy; } ;
typedef enum tuner_param { ____Placeholder_tuner_param } tuner_param ;







 int stb6100_get_bandwidth (struct dvb_frontend*,int *) ;
 int stb6100_get_frequency (struct dvb_frontend*,int *) ;

__attribute__((used)) static int stb6100_get_state(struct dvb_frontend *fe,
        enum tuner_param param,
        struct tuner_state *state)
{
 switch (param) {
 case 131:
  stb6100_get_frequency(fe, &state->frequency);
  break;
 case 128:
  break;
 case 130:
  break;
 case 132:
  stb6100_get_bandwidth(fe, &state->bandwidth);
  break;
 case 129:
  break;
 default:
  break;
 }

 return 0;
}
