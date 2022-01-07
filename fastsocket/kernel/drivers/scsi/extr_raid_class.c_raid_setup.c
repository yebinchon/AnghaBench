
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct raid_data {int component_list; } ;
struct device {int dummy; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct raid_data*) ;
 struct raid_data* kzalloc (int,int ) ;

__attribute__((used)) static int raid_setup(struct transport_container *tc, struct device *dev,
         struct device *cdev)
{
 struct raid_data *rd;

 BUG_ON(dev_get_drvdata(cdev));

 rd = kzalloc(sizeof(*rd), GFP_KERNEL);
 if (!rd)
  return -ENOMEM;

 INIT_LIST_HEAD(&rd->component_list);
 dev_set_drvdata(cdev, rd);

 return 0;
}
