
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int LCD_ON ;
 int acpi_evaluate_object (scalar_t__,int *,int *,int *) ;
 int get_lcd_state () ;
 scalar_t__ lcd_switch_handle ;
 int pr_warning (char*) ;
 int write_status (int *,int,int ) ;

__attribute__((used)) static int set_lcd_state(int value)
{
 int lcd = 0;
 acpi_status status = 0;

 lcd = value ? 1 : 0;

 if (lcd == get_lcd_state())
  return 0;

 if (lcd_switch_handle) {
  status = acpi_evaluate_object(lcd_switch_handle,
           ((void*)0), ((void*)0), ((void*)0));

  if (ACPI_FAILURE(status))
   pr_warning("Error switching LCD\n");
 }

 write_status(((void*)0), lcd, LCD_ON);
 return 0;
}
