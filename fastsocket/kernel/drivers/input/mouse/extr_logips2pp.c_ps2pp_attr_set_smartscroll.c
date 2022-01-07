
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned long smartscroll; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ps2pp_set_smartscroll (struct psmouse*,unsigned long) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t ps2pp_attr_set_smartscroll(struct psmouse *psmouse, void *data,
       const char *buf, size_t count)
{
 unsigned long value;

 if (strict_strtoul(buf, 10, &value) || value > 1)
  return -EINVAL;

 ps2pp_set_smartscroll(psmouse, value);
 psmouse->smartscroll = value;
 return count;
}
