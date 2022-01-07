
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_event {int comp; int * xfer_iu; int * sync_iu; } ;


 int complete (int *) ;

__attribute__((used)) static void ibmvfc_sync_completion(struct ibmvfc_event *evt)
{

 if (evt->sync_iu)
  *evt->sync_iu = *evt->xfer_iu;

 complete(&evt->comp);
}
