
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i2400m {int (* bus_reset ) (struct i2400m*,int) ;} ;
typedef enum i2400m_reset_type { ____Placeholder_i2400m_reset_type } i2400m_reset_type ;


 int EINVAL ;



 int stub1 (struct i2400m*,int) ;

__attribute__((used)) static
int debugfs_i2400m_reset_set(void *data, u64 val)
{
 int result;
 struct i2400m *i2400m = data;
 enum i2400m_reset_type rt = val;
 switch(rt) {
 case 128:
 case 129:
 case 130:
  result = i2400m->bus_reset(i2400m, rt);
  if (result >= 0)
   result = 0;
 default:
  result = -EINVAL;
 }
 return result;
}
