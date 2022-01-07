
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 TYPE_1__* str_ident ;

__attribute__((used)) static char *get_label(unsigned short ident)
{
 return (*str_ident[ident].name ? str_ident[ident].name : "UNKNOWN");
}
