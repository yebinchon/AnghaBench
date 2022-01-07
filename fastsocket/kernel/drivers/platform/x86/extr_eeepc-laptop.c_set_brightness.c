
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int CM_ASL_PANELBRIGHT ;
 int max (int ,int ) ;
 int min (int,int) ;
 int set_acpi (int ,int) ;

__attribute__((used)) static int set_brightness(struct backlight_device *bd, int value)
{
 value = max(0, min(15, value));
 return set_acpi(CM_ASL_PANELBRIGHT, value);
}
