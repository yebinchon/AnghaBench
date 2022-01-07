
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_rport {int upld_wait; int flags; } ;


 int BNX2FC_FLAG_ENABLED ;
 int BNX2FC_FLAG_OFFLOADED ;
 int BNX2FC_FLAG_UPLD_REQ_COMPL ;
 int BNX2FC_TGT_DBG (struct bnx2fc_rport*,char*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void bnx2fc_upld_timer(unsigned long data)
{

 struct bnx2fc_rport *tgt = (struct bnx2fc_rport *)data;

 BNX2FC_TGT_DBG(tgt, "upld_timer - Upload compl not received!!\n");

 clear_bit(BNX2FC_FLAG_OFFLOADED, &tgt->flags);
 clear_bit(BNX2FC_FLAG_ENABLED, &tgt->flags);
 set_bit(BNX2FC_FLAG_UPLD_REQ_COMPL, &tgt->flags);
 wake_up_interruptible(&tgt->upld_wait);
}
