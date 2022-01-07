
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtnet_info {scalar_t__ pages; TYPE_2__* vdev; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {int (* del_vqs ) (TYPE_2__*) ;int (* reset ) (TYPE_2__*) ;} ;


 int GFP_KERNEL ;
 int __free_pages (int ,int ) ;
 int free_unused_bufs (struct virtnet_info*) ;
 int get_a_page (struct virtnet_info*,int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void remove_vq_common(struct virtnet_info *vi)
{
 vi->vdev->config->reset(vi->vdev);


 free_unused_bufs(vi);

 vi->vdev->config->del_vqs(vi->vdev);

 while (vi->pages)
  __free_pages(get_a_page(vi, GFP_KERNEL), 0);
}
