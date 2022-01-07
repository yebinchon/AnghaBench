
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int lock; int * registers; } ;


 size_t SYSCONFIG1 ;
 int SYSCONFIG1_RDS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si470x_set_register (struct si470x_device*,size_t) ;

int si470x_rds_on(struct si470x_device *radio)
{
 int retval;


 mutex_lock(&radio->lock);
 radio->registers[SYSCONFIG1] |= SYSCONFIG1_RDS;
 retval = si470x_set_register(radio, SYSCONFIG1);
 if (retval < 0)
  radio->registers[SYSCONFIG1] &= ~SYSCONFIG1_RDS;
 mutex_unlock(&radio->lock);

 return retval;
}
