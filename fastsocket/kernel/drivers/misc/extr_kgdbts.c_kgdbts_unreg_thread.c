
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ configured ;
 int final_ack ;
 int kgdb_unregister_io_module (int *) ;
 int kgdbts_io_ops ;
 int msleep_interruptible (int) ;

__attribute__((used)) static int kgdbts_unreg_thread(void *ptr)
{



 while (!final_ack)
  msleep_interruptible(1500);

 if (configured)
  kgdb_unregister_io_module(&kgdbts_io_ops);
 configured = 0;

 return 0;
}
