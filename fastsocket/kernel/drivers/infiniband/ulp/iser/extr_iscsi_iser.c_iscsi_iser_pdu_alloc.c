
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct iscsi_task {int hdr_max; struct iscsi_hdr* hdr; struct iscsi_iser_task* dd_data; } ;
struct TYPE_2__ {int iscsi_header; } ;
struct iscsi_iser_task {TYPE_1__ desc; } ;
struct iscsi_hdr {int dummy; } ;



__attribute__((used)) static int iscsi_iser_pdu_alloc(struct iscsi_task *task, uint8_t opcode)
{
 struct iscsi_iser_task *iser_task = task->dd_data;

 task->hdr = (struct iscsi_hdr *)&iser_task->desc.iscsi_header;
 task->hdr_max = sizeof(iser_task->desc.iscsi_header);
 return 0;
}
