
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_en50221 {scalar_t__ data; } ;
struct budget_ci {int budget; } ;


 int DEBIADDR_ATTR ;
 int DEBICICAM ;
 int EINVAL ;
 int ttpci_budget_debiread (int *,int ,int,int,int,int ) ;

__attribute__((used)) static int ciintf_read_attribute_mem(struct dvb_ca_en50221 *ca, int slot, int address)
{
 struct budget_ci *budget_ci = (struct budget_ci *) ca->data;

 if (slot != 0)
  return -EINVAL;

 return ttpci_budget_debiread(&budget_ci->budget, DEBICICAM,
         DEBIADDR_ATTR | (address & 0xfff), 1, 1, 0);
}
