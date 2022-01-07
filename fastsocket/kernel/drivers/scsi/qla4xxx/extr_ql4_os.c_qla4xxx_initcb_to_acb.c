
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_ctrl_blk_def {int reserved15; int reserved14; int reserved13; int reserved12; int reserved11; int reserved10; int reserved9; int reserved8; int reserved7; int reserved6; int reserved5; int reserved4; int reserved3; int reserved2; int reserved1; } ;
struct addr_ctrl_blk {int dummy; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void
qla4xxx_initcb_to_acb(struct addr_ctrl_blk *init_fw_cb)
{
 struct addr_ctrl_blk_def *acb;
 acb = (struct addr_ctrl_blk_def *)init_fw_cb;
 memset(acb->reserved1, 0, sizeof(acb->reserved1));
 memset(acb->reserved2, 0, sizeof(acb->reserved2));
 memset(acb->reserved3, 0, sizeof(acb->reserved3));
 memset(acb->reserved4, 0, sizeof(acb->reserved4));
 memset(acb->reserved5, 0, sizeof(acb->reserved5));
 memset(acb->reserved6, 0, sizeof(acb->reserved6));
 memset(acb->reserved7, 0, sizeof(acb->reserved7));
 memset(acb->reserved8, 0, sizeof(acb->reserved8));
 memset(acb->reserved9, 0, sizeof(acb->reserved9));
 memset(acb->reserved10, 0, sizeof(acb->reserved10));
 memset(acb->reserved11, 0, sizeof(acb->reserved11));
 memset(acb->reserved12, 0, sizeof(acb->reserved12));
 memset(acb->reserved13, 0, sizeof(acb->reserved13));
 memset(acb->reserved14, 0, sizeof(acb->reserved14));
 memset(acb->reserved15, 0, sizeof(acb->reserved15));
}
