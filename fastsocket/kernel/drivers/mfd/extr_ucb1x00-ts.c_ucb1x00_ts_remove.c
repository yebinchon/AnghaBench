
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int idev; } ;
struct ucb1x00_dev {struct ucb1x00_ts* priv; } ;


 int input_unregister_device (int ) ;
 int kfree (struct ucb1x00_ts*) ;

__attribute__((used)) static void ucb1x00_ts_remove(struct ucb1x00_dev *dev)
{
 struct ucb1x00_ts *ts = dev->priv;

 input_unregister_device(ts->idev);
 kfree(ts);
}
