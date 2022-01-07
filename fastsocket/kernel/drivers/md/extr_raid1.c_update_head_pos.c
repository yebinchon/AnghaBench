
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {TYPE_2__* mirrors; } ;
struct r1bio {scalar_t__ sectors; scalar_t__ sector; TYPE_1__* mddev; } ;
struct TYPE_4__ {scalar_t__ head_position; } ;
struct TYPE_3__ {struct r1conf* private; } ;



__attribute__((used)) static inline void update_head_pos(int disk, struct r1bio *r1_bio)
{
 struct r1conf *conf = r1_bio->mddev->private;

 conf->mirrors[disk].head_position =
  r1_bio->sector + (r1_bio->sectors);
}
