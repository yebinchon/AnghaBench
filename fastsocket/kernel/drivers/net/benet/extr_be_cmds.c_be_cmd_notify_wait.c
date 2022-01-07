
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {int dummy; } ;
struct be_adapter {int dummy; } ;


 int EBUSY ;
 struct be_mcc_wrb* be_cmd_copy (struct be_adapter*,struct be_mcc_wrb*) ;
 int be_cmd_lock (struct be_adapter*) ;
 int be_cmd_unlock (struct be_adapter*) ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int memcpy (struct be_mcc_wrb*,struct be_mcc_wrb*,int) ;
 scalar_t__ use_mcc (struct be_adapter*) ;

__attribute__((used)) static int be_cmd_notify_wait(struct be_adapter *adapter,
         struct be_mcc_wrb *wrb)
{
 struct be_mcc_wrb *dest_wrb;
 int status;

 status = be_cmd_lock(adapter);
 if (status)
  return status;

 dest_wrb = be_cmd_copy(adapter, wrb);
 if (!dest_wrb)
  return -EBUSY;

 if (use_mcc(adapter))
  status = be_mcc_notify_wait(adapter);
 else
  status = be_mbox_notify_wait(adapter);

 if (!status)
  memcpy(wrb, dest_wrb, sizeof(*wrb));

 be_cmd_unlock(adapter);
 return status;
}
