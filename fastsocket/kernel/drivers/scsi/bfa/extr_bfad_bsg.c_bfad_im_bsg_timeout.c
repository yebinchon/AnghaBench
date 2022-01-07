
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_bsg_job {int dummy; } ;


 int EAGAIN ;

int
bfad_im_bsg_timeout(struct fc_bsg_job *job)
{




 return -EAGAIN;
}
