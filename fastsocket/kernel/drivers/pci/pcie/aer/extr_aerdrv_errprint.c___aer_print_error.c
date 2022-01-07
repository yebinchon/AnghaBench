
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct aer_err_info {int status; int mask; scalar_t__ severity; int first_error; } ;


 scalar_t__ AER_CORRECTABLE ;
 int ARRAY_SIZE (char**) ;
 char** aer_correctable_error_string ;
 char** aer_uncorrectable_error_string ;
 int dev_err (int *,char*,int,char const*,...) ;

__attribute__((used)) static void __aer_print_error(struct pci_dev *dev,
         struct aer_err_info *info)
{
 int i, status;
 const char *errmsg = ((void*)0);
 status = (info->status & ~info->mask);

 for (i = 0; i < 32; i++) {
  if (!(status & (1 << i)))
   continue;

  if (info->severity == AER_CORRECTABLE)
   errmsg = i < ARRAY_SIZE(aer_correctable_error_string) ?
    aer_correctable_error_string[i] : ((void*)0);
  else
   errmsg = i < ARRAY_SIZE(aer_uncorrectable_error_string) ?
    aer_uncorrectable_error_string[i] : ((void*)0);

  if (errmsg)
   dev_err(&dev->dev, "   [%2d] %-22s%s\n", i, errmsg,
    info->first_error == i ? " (First)" : "");
  else
   dev_err(&dev->dev, "   [%2d] Unknown Error Bit%s\n",
    i, info->first_error == i ? " (First)" : "");
 }
}
