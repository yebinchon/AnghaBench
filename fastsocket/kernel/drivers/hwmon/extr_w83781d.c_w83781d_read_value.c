
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83781d_data {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w83781d_read_value_i2c (struct w83781d_data*,int ) ;

__attribute__((used)) static int
w83781d_read_value(struct w83781d_data *data, u16 reg)
{
 int res;

 mutex_lock(&data->lock);
 res = w83781d_read_value_i2c(data, reg);
 mutex_unlock(&data->lock);

 return res;
}
