
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct fsp_data* private; } ;
struct fsp_data {int last_reg; int last_val; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int ) ;

__attribute__((used)) static ssize_t fsp_attr_show_getreg(struct psmouse *psmouse,
     void *data, char *buf)
{
 struct fsp_data *pad = psmouse->private;

 return sprintf(buf, "%02x%02x\n", pad->last_reg, pad->last_val);
}
