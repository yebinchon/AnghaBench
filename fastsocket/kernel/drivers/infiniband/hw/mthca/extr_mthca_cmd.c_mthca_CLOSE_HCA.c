
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int dummy; } ;


 int CMD_CLOSE_HCA ;
 int CMD_TIME_CLASS_C ;
 int mthca_cmd (struct mthca_dev*,int ,int ,int,int ,int ) ;

int mthca_CLOSE_HCA(struct mthca_dev *dev, int panic)
{
 return mthca_cmd(dev, 0, 0, panic, CMD_CLOSE_HCA, CMD_TIME_CLASS_C);
}
