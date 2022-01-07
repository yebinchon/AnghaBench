
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {int dummy; } ;
struct ib_device {int dummy; } ;


 int recv_subn_get_guidinfo (struct ib_smp*,struct ib_device*) ;

__attribute__((used)) static int recv_subn_set_guidinfo(struct ib_smp *smp,
      struct ib_device *ibdev)
{

 return recv_subn_get_guidinfo(smp, ibdev);
}
