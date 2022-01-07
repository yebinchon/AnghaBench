
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int dummy; } ;


 int CMD_RUN_FW ;
 int CMD_TIME_CLASS_A ;
 int mthca_cmd (struct mthca_dev*,int ,int ,int ,int ,int ) ;

int mthca_RUN_FW(struct mthca_dev *dev)
{
 return mthca_cmd(dev, 0, 0, 0, CMD_RUN_FW, CMD_TIME_CLASS_A);
}
