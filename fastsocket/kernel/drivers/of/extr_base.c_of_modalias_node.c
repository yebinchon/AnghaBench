
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_3__ {char* of_device; char const* modalias; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 int of_device_is_compatible (struct device_node*,char const*) ;
 char* of_get_property (struct device_node*,char*,int*) ;
 TYPE_1__* of_modalias_table ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;

int of_modalias_node(struct device_node *node, char *modalias, int len)
{
 int i, cplen;
 const char *compatible;
 const char *p;


 for (i = 0; i < ARRAY_SIZE(of_modalias_table); i++) {
  compatible = of_modalias_table[i].of_device;
  if (!of_device_is_compatible(node, compatible))
   continue;
  strlcpy(modalias, of_modalias_table[i].modalias, len);
  return 0;
 }

 compatible = of_get_property(node, "compatible", &cplen);
 if (!compatible)
  return -ENODEV;


 p = strchr(compatible, ',');
 if (!p)
  return -ENODEV;
 p++;
 strlcpy(modalias, p, len);
 return 0;
}
