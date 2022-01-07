
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct ace_device* private_data; } ;
struct ace_device {int media_change; int dev; } ;


 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static int ace_media_changed(struct gendisk *gd)
{
 struct ace_device *ace = gd->private_data;
 dev_dbg(ace->dev, "ace_media_changed(): %i\n", ace->media_change);

 return ace->media_change;
}
