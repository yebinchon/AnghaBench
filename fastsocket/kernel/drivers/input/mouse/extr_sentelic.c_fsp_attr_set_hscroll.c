
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int fsp_onpad_hscr (struct psmouse*,unsigned long) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t fsp_attr_set_hscroll(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 unsigned long val;

 if (strict_strtoul(buf, 10, &val) || val > 1)
  return -EINVAL;

 fsp_onpad_hscr(psmouse, val);

 return count;
}
