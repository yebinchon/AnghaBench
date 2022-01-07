
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 int * proc_create (char*,int,int *,int *) ;
 int * tape_proc_devices ;
 int tape_proc_ops ;

void
tape_proc_init(void)
{
 tape_proc_devices =
  proc_create("tapedevices", S_IFREG | S_IRUGO | S_IWUSR, ((void*)0),
       &tape_proc_ops);
 if (tape_proc_devices == ((void*)0)) {
  return;
 }
}
