
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mdesc_handle {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 TYPE_1__* root_vdev ;
 int vio_create_one (struct mdesc_handle*,int ,int *) ;

__attribute__((used)) static void vio_add(struct mdesc_handle *hp, u64 node)
{
 (void) vio_create_one(hp, node, &root_vdev->dev);
}
