
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* name; } ;


 int RESOURCE_LABEL_SIZE ;
 TYPE_1__* str_ident ;
 int strncpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static void set_label(unsigned short ident, const char *label)
{
 if (label) {
  strncpy(str_ident[ident].name, label,
    RESOURCE_LABEL_SIZE);
  str_ident[ident].name[RESOURCE_LABEL_SIZE - 1] = 0;
 }
}
