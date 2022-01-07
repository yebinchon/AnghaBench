
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int updown; int init_mutex; } ;
typedef enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;


 int __i2400m_dev_start (struct i2400m*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static
int i2400m_dev_start(struct i2400m *i2400m, enum i2400m_bri bm_flags)
{
 int result;
 mutex_lock(&i2400m->init_mutex);
 result = __i2400m_dev_start(i2400m, bm_flags);
 if (result >= 0)
  i2400m->updown = 1;
 mutex_unlock(&i2400m->init_mutex);
 return result;
}
