
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_work {int ws; int i2400m; } ;
struct i2400m {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int ENXIO ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int i2400m_get (struct i2400m*) ;
 struct i2400m_work* kzalloc (int,int ) ;
 int schedule_work (int *) ;

int i2400m_schedule_work(struct i2400m *i2400m,
    void (*fn)(struct work_struct *), gfp_t gfp_flags)
{
 int result;
 struct i2400m_work *iw;

 result = -ENOMEM;
 iw = kzalloc(sizeof(*iw), gfp_flags);
 if (iw == ((void*)0))
  goto error_kzalloc;
 iw->i2400m = i2400m_get(i2400m);
 INIT_WORK(&iw->ws, fn);
 result = schedule_work(&iw->ws);
 if (result == 0)
  result = -ENXIO;
error_kzalloc:
 return result;
}
