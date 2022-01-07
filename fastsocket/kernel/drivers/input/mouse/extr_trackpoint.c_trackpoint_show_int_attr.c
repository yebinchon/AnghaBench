
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {int dummy; } ;
struct trackpoint_attr_data {int field_offset; scalar_t__ inverted; } ;
struct psmouse {struct trackpoint_data* private; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static ssize_t trackpoint_show_int_attr(struct psmouse *psmouse, void *data, char *buf)
{
 struct trackpoint_data *tp = psmouse->private;
 struct trackpoint_attr_data *attr = data;
 unsigned char value = *(unsigned char *)((char *)tp + attr->field_offset);

 if (attr->inverted)
  value = !value;

 return sprintf(buf, "%u\n", value);
}
