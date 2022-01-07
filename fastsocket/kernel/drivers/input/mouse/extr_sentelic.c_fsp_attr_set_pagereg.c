
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 scalar_t__ fsp_page_reg_write (struct psmouse*,unsigned long) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t fsp_attr_set_pagereg(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 unsigned long val;

 if (strict_strtoul(buf, 16, &val) || val > 0xff)
  return -EINVAL;

 if (fsp_page_reg_write(psmouse, val))
  return -EIO;

 return count;
}
