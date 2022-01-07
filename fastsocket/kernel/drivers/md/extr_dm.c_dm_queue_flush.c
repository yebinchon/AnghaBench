
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int work; int wq; int flags; } ;


 int DMF_BLOCK_IO_FOR_SUSPEND ;
 int clear_bit (int ,int *) ;
 int queue_work (int ,int *) ;
 int smp_mb__after_clear_bit () ;

__attribute__((used)) static void dm_queue_flush(struct mapped_device *md)
{
 clear_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
 smp_mb__after_clear_bit();
 queue_work(md->wq, &md->work);
}
