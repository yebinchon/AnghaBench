
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_sdma_status; } ;


 int IPATH_SDMA_SHUTDOWN ;
 int sdma_notify_taskbody (struct ipath_devdata*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void sdma_notify_task(unsigned long opaque)
{
 struct ipath_devdata *dd = (struct ipath_devdata *)opaque;

 if (!test_bit(IPATH_SDMA_SHUTDOWN, &dd->ipath_sdma_status))
  sdma_notify_taskbody(dd);
}
