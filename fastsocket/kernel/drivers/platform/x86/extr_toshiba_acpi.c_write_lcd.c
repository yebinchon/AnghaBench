
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int HCI_LCD_BRIGHTNESS_LEVELS ;
 int set_lcd (int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static unsigned long write_lcd(const char *buffer, unsigned long count)
{
 int value;
 int ret;

 if (sscanf(buffer, " brightness : %i", &value) == 1 &&
     value >= 0 && value < HCI_LCD_BRIGHTNESS_LEVELS) {
  ret = set_lcd(value);
  if (ret == 0)
   ret = count;
 } else {
  ret = -EINVAL;
 }
 return ret;
}
