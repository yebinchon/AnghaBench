
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe {unsigned long ntcs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct vpe* get_vpe (unsigned long) ;
 unsigned long hw_tcs ;
 unsigned long simple_strtoul (char const*,char**,int ) ;
 unsigned long tclimit ;

__attribute__((used)) static ssize_t store_ntcs(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct vpe *vpe = get_vpe(tclimit);
 unsigned long new;
 char *endp;

 new = simple_strtoul(buf, &endp, 0);
 if (endp == buf)
  goto out_einval;

 if (new == 0 || new > (hw_tcs - tclimit))
  goto out_einval;

 vpe->ntcs = new;

 return len;

out_einval:
 return -EINVAL;
}
