
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct bsg_job* sg_list; } ;
struct TYPE_3__ {struct bsg_job* sg_list; } ;
struct bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; int dev; } ;


 int kfree (struct bsg_job*) ;
 int put_device (int ) ;

__attribute__((used)) static void bsg_destroy_job(struct bsg_job *job)
{
 put_device(job->dev);

 kfree(job->request_payload.sg_list);
 kfree(job->reply_payload.sg_list);
 kfree(job);
}
