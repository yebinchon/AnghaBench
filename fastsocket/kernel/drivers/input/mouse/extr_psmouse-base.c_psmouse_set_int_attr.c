
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t psmouse_set_int_attr(struct psmouse *psmouse, void *offset, const char *buf, size_t count)
{
 unsigned int *field = (unsigned int *)((char *)psmouse + (size_t)offset);
 unsigned long value;

 if (strict_strtoul(buf, 10, &value))
  return -EINVAL;

 if ((unsigned int)value != value)
  return -EINVAL;

 *field = value;

 return count;
}
