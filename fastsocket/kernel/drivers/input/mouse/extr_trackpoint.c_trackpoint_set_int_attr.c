
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {int dummy; } ;
struct trackpoint_attr_data {int field_offset; int command; } ;
struct psmouse {int ps2dev; struct trackpoint_data* private; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 int trackpoint_write (int *,int ,unsigned long) ;

__attribute__((used)) static ssize_t trackpoint_set_int_attr(struct psmouse *psmouse, void *data,
     const char *buf, size_t count)
{
 struct trackpoint_data *tp = psmouse->private;
 struct trackpoint_attr_data *attr = data;
 unsigned char *field = (unsigned char *)((char *)tp + attr->field_offset);
 unsigned long value;

 if (strict_strtoul(buf, 10, &value) || value > 255)
  return -EINVAL;

 *field = value;
 trackpoint_write(&psmouse->ps2dev, attr->command, value);

 return count;
}
