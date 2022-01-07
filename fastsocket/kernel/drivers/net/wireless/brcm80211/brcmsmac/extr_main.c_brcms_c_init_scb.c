
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int flags; int* seqctl; int seqctl_nonqos; int magic; scalar_t__* seqnum; } ;


 int NUMPRIO ;
 int SCB_HTCAP ;
 int SCB_MAGIC ;
 int SCB_WMECAP ;
 int memset (struct scb*,int ,int) ;

void brcms_c_init_scb(struct scb *scb)
{
 int i;

 memset(scb, 0, sizeof(struct scb));
 scb->flags = SCB_WMECAP | SCB_HTCAP;
 for (i = 0; i < NUMPRIO; i++) {
  scb->seqnum[i] = 0;
  scb->seqctl[i] = 0xFFFF;
 }

 scb->seqctl_nonqos = 0xFFFF;
 scb->magic = SCB_MAGIC;
}
