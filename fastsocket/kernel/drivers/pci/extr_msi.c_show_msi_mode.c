
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_msix; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;
struct msi_attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_msi_mode(struct msi_desc *entry, struct msi_attribute *atr,
        char *buf)
{
 return sprintf(buf, "%s\n", entry->msi_attrib.is_msix ? "msix" : "msi");
}
