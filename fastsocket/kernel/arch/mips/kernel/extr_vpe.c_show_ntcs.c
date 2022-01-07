
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe {int ntcs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct vpe* get_vpe (int ) ;
 int sprintf (char*,char*,int) ;
 int tclimit ;

__attribute__((used)) static ssize_t show_ntcs(struct device *cd, struct device_attribute *attr,
    char *buf)
{
 struct vpe *vpe = get_vpe(tclimit);

 return sprintf(buf, "%d\n", vpe->ntcs);
}
