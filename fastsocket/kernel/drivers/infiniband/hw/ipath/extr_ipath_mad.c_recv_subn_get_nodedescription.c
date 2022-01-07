
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {int data; int status; scalar_t__ attr_mod; } ;
struct ib_device {int node_desc; } ;


 int IB_SMP_INVALID_FIELD ;
 int memcpy (int ,int ,int) ;
 int reply (struct ib_smp*) ;

__attribute__((used)) static int recv_subn_get_nodedescription(struct ib_smp *smp,
      struct ib_device *ibdev)
{
 if (smp->attr_mod)
  smp->status |= IB_SMP_INVALID_FIELD;

 memcpy(smp->data, ibdev->node_desc, sizeof(smp->data));

 return reply(smp);
}
