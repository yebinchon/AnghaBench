
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int dummy; } ;


 int CMD_SYS_DIS ;
 int CMD_TIME_CLASS_C ;
 int mthca_cmd (struct mthca_dev*,int ,int ,int ,int ,int ) ;

int mthca_DISABLE_LAM(struct mthca_dev *dev)
{
 return mthca_cmd(dev, 0, 0, 0, CMD_SYS_DIS, CMD_TIME_CLASS_C);
}
