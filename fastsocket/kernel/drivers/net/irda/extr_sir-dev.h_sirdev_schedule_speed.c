
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sir_dev {int dummy; } ;


 int SIRDEV_STATE_SET_SPEED ;
 int sirdev_schedule_request (struct sir_dev*,int ,unsigned int) ;

__attribute__((used)) static inline int sirdev_schedule_speed(struct sir_dev *dev, unsigned speed)
{
 return sirdev_schedule_request(dev, SIRDEV_STATE_SET_SPEED, speed);
}
