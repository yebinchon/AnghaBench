
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sir_dev {int dummy; } ;


 int SIRDEV_STATE_DONGLE_OPEN ;
 int sirdev_schedule_request (struct sir_dev*,int ,int) ;

__attribute__((used)) static inline int sirdev_schedule_dongle_open(struct sir_dev *dev, int dongle_id)
{
 return sirdev_schedule_request(dev, SIRDEV_STATE_DONGLE_OPEN, dongle_id);
}
