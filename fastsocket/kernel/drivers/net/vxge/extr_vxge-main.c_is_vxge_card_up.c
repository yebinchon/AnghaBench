
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int state; } ;


 int __VXGE_STATE_CARD_UP ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int is_vxge_card_up(struct vxgedev *vdev)
{
 return test_bit(__VXGE_STATE_CARD_UP, &vdev->state);
}
