
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dev; } ;
struct hvcs_struct {int dummy; } ;


 struct hvcs_struct* dev_get_drvdata (int *) ;

__attribute__((used)) static inline struct hvcs_struct *from_vio_dev(struct vio_dev *viod)
{
 return dev_get_drvdata(&viod->dev);
}
