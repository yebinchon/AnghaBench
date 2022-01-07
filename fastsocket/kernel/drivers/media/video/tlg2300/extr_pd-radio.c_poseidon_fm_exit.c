
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fm_dev; } ;
struct poseidon {TYPE_1__ radio_data; } ;


 int destroy_video_device (int *) ;

int poseidon_fm_exit(struct poseidon *p)
{
 destroy_video_device(&p->radio_data.fm_dev);
 return 0;
}
