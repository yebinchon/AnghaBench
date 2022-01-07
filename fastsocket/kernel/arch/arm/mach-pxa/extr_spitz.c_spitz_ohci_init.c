
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SPITZ_GPIO_USB_HOST ;
 int UP2OCR ;
 int UP2OCR_DMPDE ;
 int UP2OCR_DPPDE ;
 int UP2OCR_HXOE ;
 int UP2OCR_HXS ;
 int gpio_direction_output (int ,int) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int spitz_ohci_init(struct device *dev)
{
 int err;

 err = gpio_request(SPITZ_GPIO_USB_HOST, "USB_HOST");
 if (err)
  return err;




 UP2OCR = UP2OCR_HXS | UP2OCR_HXOE | UP2OCR_DPPDE | UP2OCR_DMPDE;

 return gpio_direction_output(SPITZ_GPIO_USB_HOST, 1);
}
