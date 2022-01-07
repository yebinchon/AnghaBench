
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_work {int ws; int pl; int i2400m; } ;
struct i2400m {int * work_queue; } ;
typedef int gfp_t ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int i2400m_get (struct i2400m*) ;
 struct i2400m_work* kzalloc (int,int ) ;
 int memcpy (int ,void const*,size_t) ;
 int queue_work (int *,int *) ;

int i2400m_queue_work(struct i2400m *i2400m,
        void (*fn)(struct work_struct *), gfp_t gfp_flags,
        const void *pl, size_t pl_size)
{
 int result;
 struct i2400m_work *iw;

 BUG_ON(i2400m->work_queue == ((void*)0));
 result = -ENOMEM;
 iw = kzalloc(sizeof(*iw) + pl_size, gfp_flags);
 if (iw == ((void*)0))
  goto error_kzalloc;
 iw->i2400m = i2400m_get(i2400m);
 memcpy(iw->pl, pl, pl_size);
 INIT_WORK(&iw->ws, fn);
 result = queue_work(i2400m->work_queue, &iw->ws);
error_kzalloc:
 return result;
}
