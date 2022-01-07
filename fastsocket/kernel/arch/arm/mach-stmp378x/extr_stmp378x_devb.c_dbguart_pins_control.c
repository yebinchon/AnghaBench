
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dbguart_pins ;
 int stmp3xxx_release_pin_group (int *,char*) ;
 int stmp3xxx_request_pin_group (int *,char*) ;

__attribute__((used)) static int dbguart_pins_control(int id, int request)
{
 int r = 0;

 if (request)
  r = stmp3xxx_request_pin_group(&dbguart_pins[id], "debug uart");
 else
  stmp3xxx_release_pin_group(&dbguart_pins[id], "debug uart");
 return r;
}
