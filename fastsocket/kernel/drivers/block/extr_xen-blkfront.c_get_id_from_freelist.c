
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blkfront_info {unsigned long shadow_free; TYPE_2__* shadow; } ;
struct TYPE_3__ {unsigned long id; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 unsigned long BLK_RING_SIZE ;
 int BUG_ON (int) ;

__attribute__((used)) static int get_id_from_freelist(struct blkfront_info *info)
{
 unsigned long free = info->shadow_free;
 BUG_ON(free >= BLK_RING_SIZE);
 info->shadow_free = info->shadow[free].req.id;
 info->shadow[free].req.id = 0x0fffffee;
 return free;
}
