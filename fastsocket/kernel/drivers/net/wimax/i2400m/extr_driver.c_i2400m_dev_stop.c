
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int init_mutex; scalar_t__ updown; } ;


 int __i2400m_dev_stop (struct i2400m*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static
void i2400m_dev_stop(struct i2400m *i2400m)
{
 mutex_lock(&i2400m->init_mutex);
 if (i2400m->updown) {
  __i2400m_dev_stop(i2400m);
  i2400m->updown = 0;
 }
 mutex_unlock(&i2400m->init_mutex);
}
