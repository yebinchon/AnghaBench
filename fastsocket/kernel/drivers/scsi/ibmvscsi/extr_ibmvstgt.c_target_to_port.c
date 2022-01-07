
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_port {int dummy; } ;
struct srp_target {scalar_t__ ldata; } ;



__attribute__((used)) static struct vio_port *target_to_port(struct srp_target *target)
{
 return (struct vio_port *) target->ldata;
}
