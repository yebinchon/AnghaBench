
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lgdt330x_state {TYPE_1__* config; } ;
struct TYPE_2__ {int demod_chip; } ;


 int ENODEV ;


 int lgdt3302_SwReset (struct lgdt330x_state*) ;
 int lgdt3303_SwReset (struct lgdt330x_state*) ;

__attribute__((used)) static int lgdt330x_SwReset(struct lgdt330x_state* state)
{
 switch (state->config->demod_chip) {
 case 129:
  return lgdt3302_SwReset(state);
 case 128:
  return lgdt3303_SwReset(state);
 default:
  return -ENODEV;
 }
}
