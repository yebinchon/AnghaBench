
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int nodename; } ;
struct blkfront_info {int evtchn; int ring_ref; } ;


 int EAGAIN ;
 int XEN_IO_PROTO_ABI_NATIVE ;
 int XenbusStateInitialised ;
 int blkif_free (struct blkfront_info*,int ) ;
 int setup_blkring (struct xenbus_device*,struct blkfront_info*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,...) ;
 int xenbus_printf (struct xenbus_transaction,int ,char*,char*,int ) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;

__attribute__((used)) static int talk_to_blkback(struct xenbus_device *dev,
      struct blkfront_info *info)
{
 const char *message = ((void*)0);
 struct xenbus_transaction xbt;
 int err;


 err = setup_blkring(dev, info);
 if (err)
  goto out;

again:
 err = xenbus_transaction_start(&xbt);
 if (err) {
  xenbus_dev_fatal(dev, err, "starting transaction");
  goto destroy_blkring;
 }

 err = xenbus_printf(xbt, dev->nodename,
       "ring-ref", "%u", info->ring_ref);
 if (err) {
  message = "writing ring-ref";
  goto abort_transaction;
 }
 err = xenbus_printf(xbt, dev->nodename,
       "event-channel", "%u", info->evtchn);
 if (err) {
  message = "writing event-channel";
  goto abort_transaction;
 }
 err = xenbus_printf(xbt, dev->nodename, "protocol", "%s",
       XEN_IO_PROTO_ABI_NATIVE);
 if (err) {
  message = "writing protocol";
  goto abort_transaction;
 }

 err = xenbus_transaction_end(xbt, 0);
 if (err) {
  if (err == -EAGAIN)
   goto again;
  xenbus_dev_fatal(dev, err, "completing transaction");
  goto destroy_blkring;
 }

 xenbus_switch_state(dev, XenbusStateInitialised);

 return 0;

 abort_transaction:
 xenbus_transaction_end(xbt, 1);
 if (message)
  xenbus_dev_fatal(dev, err, "%s", message);
 destroy_blkring:
 blkif_free(info, 0);
 out:
 return err;
}
