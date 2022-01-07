
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int boot_mode; } ;


 int GFP_ATOMIC ;
 int __i2400m_dev_reset_handle ;
 int i2400m_schedule_work (struct i2400m*,int ,int ) ;
 int wmb () ;

int i2400m_dev_reset_handle(struct i2400m *i2400m)
{
 i2400m->boot_mode = 1;
 wmb();
 return i2400m_schedule_work(i2400m, __i2400m_dev_reset_handle,
        GFP_ATOMIC);
}
