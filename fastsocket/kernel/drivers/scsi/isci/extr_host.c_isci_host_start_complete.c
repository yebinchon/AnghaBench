
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_host {int eventq; int flags; TYPE_1__* pdev; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_2__ {int dev; } ;


 int IHOST_START_PENDING ;
 int SCI_SUCCESS ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void isci_host_start_complete(struct isci_host *ihost, enum sci_status completion_status)
{
 if (completion_status != SCI_SUCCESS)
  dev_info(&ihost->pdev->dev,
   "controller start timed out, continuing...\n");
 clear_bit(IHOST_START_PENDING, &ihost->flags);
 wake_up(&ihost->eventq);
}
