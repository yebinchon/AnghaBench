
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_device {int * cq_tasklet; } ;
struct iser_cq_desc {int cq_index; struct iser_device* device; } ;
struct ib_cq {int dummy; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void iser_cq_callback(struct ib_cq *cq, void *cq_context)
{
 struct iser_cq_desc *cq_desc = (struct iser_cq_desc *)cq_context;
 struct iser_device *device = cq_desc->device;
 int cq_index = cq_desc->cq_index;

 tasklet_schedule(&device->cq_tasklet[cq_index]);
}
