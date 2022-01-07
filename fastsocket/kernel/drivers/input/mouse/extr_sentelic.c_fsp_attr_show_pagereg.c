
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 scalar_t__ fsp_page_reg_read (struct psmouse*,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fsp_attr_show_pagereg(struct psmouse *psmouse,
     void *data, char *buf)
{
 int val = 0;

 if (fsp_page_reg_read(psmouse, &val))
  return -EIO;

 return sprintf(buf, "%02x\n", val);
}
