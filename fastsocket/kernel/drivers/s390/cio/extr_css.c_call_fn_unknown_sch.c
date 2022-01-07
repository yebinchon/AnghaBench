
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct cb_data {int (* fn_unknown_sch ) (struct subchannel_id,int ) ;int data; int set; } ;


 scalar_t__ idset_sch_contains (int ,struct subchannel_id) ;
 int stub1 (struct subchannel_id,int ) ;

__attribute__((used)) static int call_fn_unknown_sch(struct subchannel_id schid, void *data)
{
 struct cb_data *cb = data;
 int rc = 0;

 if (idset_sch_contains(cb->set, schid))
  rc = cb->fn_unknown_sch(schid, cb->data);
 return rc;
}
