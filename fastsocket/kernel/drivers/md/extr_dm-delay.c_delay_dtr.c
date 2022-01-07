
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct delay_c* private; } ;
struct delay_c {int delayed_pool; scalar_t__ dev_write; scalar_t__ dev_read; } ;


 int dm_put_device (struct dm_target*,scalar_t__) ;
 int flush_workqueue (int ) ;
 int kdelayd_wq ;
 int kfree (struct delay_c*) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static void delay_dtr(struct dm_target *ti)
{
 struct delay_c *dc = ti->private;

 flush_workqueue(kdelayd_wq);

 dm_put_device(ti, dc->dev_read);

 if (dc->dev_write)
  dm_put_device(ti, dc->dev_write);

 mempool_destroy(dc->delayed_pool);
 kfree(dc);
}
