
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mthca_dev {int dummy; } ;


 int CMD_MAP_EQ ;
 int CMD_TIME_CLASS_B ;
 int mthca_cmd (struct mthca_dev*,scalar_t__,int,int ,int ,int ) ;
 int mthca_dbg (struct mthca_dev*,char*,char*,unsigned long long,int) ;

int mthca_MAP_EQ(struct mthca_dev *dev, u64 event_mask, int unmap,
   int eq_num)
{
 mthca_dbg(dev, "%s mask %016llx for eqn %d\n",
    unmap ? "Clearing" : "Setting",
    (unsigned long long) event_mask, eq_num);
 return mthca_cmd(dev, event_mask, (unmap << 31) | eq_num,
    0, CMD_MAP_EQ, CMD_TIME_CLASS_B);
}
