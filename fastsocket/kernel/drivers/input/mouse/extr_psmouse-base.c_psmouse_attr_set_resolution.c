
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int (* set_resolution ) (struct psmouse*,unsigned long) ;} ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 int stub1 (struct psmouse*,unsigned long) ;

__attribute__((used)) static ssize_t psmouse_attr_set_resolution(struct psmouse *psmouse, void *data, const char *buf, size_t count)
{
 unsigned long value;

 if (strict_strtoul(buf, 10, &value))
  return -EINVAL;

 psmouse->set_resolution(psmouse, value);
 return count;
}
