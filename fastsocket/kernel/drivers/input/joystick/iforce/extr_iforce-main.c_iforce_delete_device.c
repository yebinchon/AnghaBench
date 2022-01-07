
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iforce {int bus; } ;




 int iforce_usb_delete (struct iforce*) ;

void iforce_delete_device(struct iforce *iforce)
{
 switch (iforce->bus) {
 }
}
