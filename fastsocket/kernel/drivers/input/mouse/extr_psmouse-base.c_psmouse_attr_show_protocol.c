
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {int type; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 TYPE_1__* psmouse_protocol_by_type (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t psmouse_attr_show_protocol(struct psmouse *psmouse, void *data, char *buf)
{
 return sprintf(buf, "%s\n", psmouse_protocol_by_type(psmouse->type)->name);
}
