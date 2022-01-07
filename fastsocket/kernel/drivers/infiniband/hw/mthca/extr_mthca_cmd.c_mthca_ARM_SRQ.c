
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int dummy; } ;


 int CMD_ARM_SRQ ;
 int CMD_TIME_CLASS_B ;
 int mthca_cmd (struct mthca_dev*,int,int,int ,int ,int ) ;

int mthca_ARM_SRQ(struct mthca_dev *dev, int srq_num, int limit)
{
 return mthca_cmd(dev, limit, srq_num, 0, CMD_ARM_SRQ,
    CMD_TIME_CLASS_B);
}
