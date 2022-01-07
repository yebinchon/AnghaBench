
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_allocation {int num; int c; } ;


 int complete (int *) ;

__attribute__((used)) static void veth_complete_allocation(void *parm, int number)
{
 struct veth_allocation *vc = (struct veth_allocation *)parm;

 vc->num = number;
 complete(&vc->c);
}
