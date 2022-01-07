
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int ENOMEM ;
 int XPC_NET_CHANNEL ;
 scalar_t__ XPNET_MAX_IDLE_KTHREADS ;
 scalar_t__ XPNET_MAX_KTHREADS ;
 scalar_t__ XPNET_MSG_NENTRIES ;
 scalar_t__ XPNET_MSG_SIZE ;
 int dev_dbg (int ,char*,int ,...) ;
 int dev_err (int ,char*,int ,int) ;
 int xpSuccess ;
 int xpc_connect (int ,int ,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int xpnet ;
 int xpnet_connection_activity ;

__attribute__((used)) static int
xpnet_dev_open(struct net_device *dev)
{
 enum xp_retval ret;

 dev_dbg(xpnet, "calling xpc_connect(%d, 0x%p, NULL, %ld, %ld, %ld, "
  "%ld)\n", XPC_NET_CHANNEL, xpnet_connection_activity,
  (unsigned long)XPNET_MSG_SIZE,
  (unsigned long)XPNET_MSG_NENTRIES,
  (unsigned long)XPNET_MAX_KTHREADS,
  (unsigned long)XPNET_MAX_IDLE_KTHREADS);

 ret = xpc_connect(XPC_NET_CHANNEL, xpnet_connection_activity, ((void*)0),
     XPNET_MSG_SIZE, XPNET_MSG_NENTRIES,
     XPNET_MAX_KTHREADS, XPNET_MAX_IDLE_KTHREADS);
 if (ret != xpSuccess) {
  dev_err(xpnet, "ifconfig up of %s failed on XPC connect, "
   "ret=%d\n", dev->name, ret);

  return -ENOMEM;
 }

 dev_dbg(xpnet, "ifconfig up of %s; XPC connected\n", dev->name);

 return 0;
}
