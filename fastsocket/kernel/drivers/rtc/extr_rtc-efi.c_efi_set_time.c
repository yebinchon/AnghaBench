
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef int efi_time_t ;
typedef scalar_t__ efi_status_t ;
struct TYPE_2__ {scalar_t__ (* set_time ) (int *) ;} ;


 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int convert_to_efi_time (struct rtc_time*,int *) ;
 TYPE_1__ efi ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static int efi_set_time(struct device *dev, struct rtc_time *tm)
{
 efi_status_t status;
 efi_time_t eft;

 convert_to_efi_time(tm, &eft);

 status = efi.set_time(&eft);

 return status == EFI_SUCCESS ? 0 : -EINVAL;
}
