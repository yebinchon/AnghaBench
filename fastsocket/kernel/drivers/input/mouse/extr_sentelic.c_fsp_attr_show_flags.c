
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct fsp_data* private; } ;
struct fsp_data {int flags; } ;
typedef int ssize_t ;


 int FSPDRV_FLAG_EN_OPC ;
 int sprintf (char*,char*,char) ;

__attribute__((used)) static ssize_t fsp_attr_show_flags(struct psmouse *psmouse,
     void *data, char *buf)
{
 struct fsp_data *pad = psmouse->private;

 return sprintf(buf, "%c\n",
   pad->flags & FSPDRV_FLAG_EN_OPC ? 'C' : 'c');
}
