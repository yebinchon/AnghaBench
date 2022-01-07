
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pbt; int blk0_len; int version; int len; } ;
struct ipl_parameter_block {TYPE_1__ hdr; } ;


 int DIAG308_IPL_TYPE_CCW ;
 int IPL_PARM_BLK0_CCW_LEN ;
 int IPL_PARM_BLK_CCW_LEN ;
 int IPL_PARM_BLOCK_VERSION ;

__attribute__((used)) static void reipl_block_ccw_init(struct ipl_parameter_block *ipb)
{
 ipb->hdr.len = IPL_PARM_BLK_CCW_LEN;
 ipb->hdr.version = IPL_PARM_BLOCK_VERSION;
 ipb->hdr.blk0_len = IPL_PARM_BLK0_CCW_LEN;
 ipb->hdr.pbt = DIAG308_IPL_TYPE_CCW;
}
