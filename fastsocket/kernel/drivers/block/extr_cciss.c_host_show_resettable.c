
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int board_id; } ;
typedef int ssize_t ;


 int ctlr_is_resettable (int ) ;
 int snprintf (char*,int,char*,int) ;
 struct ctlr_info* to_hba (struct device*) ;

__attribute__((used)) static ssize_t host_show_resettable(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct ctlr_info *h = to_hba(dev);

 return snprintf(buf, 20, "%d\n", ctlr_is_resettable(h->board_id));
}
