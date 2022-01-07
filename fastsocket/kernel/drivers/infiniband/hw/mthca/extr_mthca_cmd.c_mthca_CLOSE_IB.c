
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int dummy; } ;


 int CMD_CLOSE_IB ;
 int CMD_TIME_CLASS_A ;
 int mthca_cmd (struct mthca_dev*,int ,int,int ,int ,int ) ;

int mthca_CLOSE_IB(struct mthca_dev *dev, int port)
{
 return mthca_cmd(dev, 0, port, 0, CMD_CLOSE_IB, CMD_TIME_CLASS_A);
}
