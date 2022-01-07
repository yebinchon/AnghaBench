
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int capability; } ;
struct TYPE_3__ {scalar_t__ brightness; scalar_t__ mailled; } ;


 int ACER_CAP_BRIGHTNESS ;
 int ACER_CAP_MAILLED ;
 TYPE_2__* interface ;
 TYPE_1__* quirks ;

__attribute__((used)) static void set_quirks(void)
{
 if (!interface)
  return;

 if (quirks->mailled)
  interface->capability |= ACER_CAP_MAILLED;

 if (quirks->brightness)
  interface->capability |= ACER_CAP_BRIGHTNESS;
}
