
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blkfront_info {unsigned long shadow_free; TYPE_2__* shadow; } ;
struct TYPE_3__ {unsigned long id; } ;
struct TYPE_4__ {scalar_t__ request; TYPE_1__ req; } ;



__attribute__((used)) static void add_id_to_freelist(struct blkfront_info *info,
          unsigned long id)
{
 info->shadow[id].req.id = info->shadow_free;
 info->shadow[id].request = 0;
 info->shadow_free = id;
}
