
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pin_group {int nr_pins; struct pin_desc* pins; } ;
struct pin_desc {int id; } ;


 int stmp3xxx_release_pin (int ,char const*) ;

void stmp3xxx_release_pin_group(struct pin_group *pin_group, const char *label)
{
 struct pin_desc *pin;
 int p;

 for (p = 0; p < pin_group->nr_pins; p++) {
  pin = &pin_group->pins[p];
  stmp3xxx_release_pin(pin->id, label);
 }
}
