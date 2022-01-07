
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_crypt_io {int work; TYPE_1__* target; } ;
struct crypt_config {int io_queue; } ;
struct TYPE_2__ {struct crypt_config* private; } ;


 int INIT_WORK (int *,int ) ;
 int kcryptd_io ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void kcryptd_queue_io(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->target->private;

 INIT_WORK(&io->work, kcryptd_io);
 queue_work(cc->io_queue, &io->work);
}
