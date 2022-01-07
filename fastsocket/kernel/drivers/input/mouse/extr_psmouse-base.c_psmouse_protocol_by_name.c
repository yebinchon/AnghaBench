
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse_protocol {int alias; int name; } ;


 int ARRAY_SIZE (struct psmouse_protocol const*) ;
 struct psmouse_protocol const* psmouse_protocols ;
 size_t strlen (int ) ;
 int strncmp (int ,char const*,size_t) ;

__attribute__((used)) static const struct psmouse_protocol *psmouse_protocol_by_name(const char *name, size_t len)
{
 const struct psmouse_protocol *p;
 int i;

 for (i = 0; i < ARRAY_SIZE(psmouse_protocols); i++) {
  p = &psmouse_protocols[i];

  if ((strlen(p->name) == len && !strncmp(p->name, name, len)) ||
      (strlen(p->alias) == len && !strncmp(p->alias, name, len)))
   return &psmouse_protocols[i];
 }

 return ((void*)0);
}
