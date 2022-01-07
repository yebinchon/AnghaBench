
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_sock {int refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void vxlan_sock_hold(struct vxlan_sock *vs)
{
 atomic_inc(&vs->refcnt);
}
