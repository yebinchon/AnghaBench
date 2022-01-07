
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bnx2x {TYPE_5__* fw_stats_req; } ;
struct TYPE_6__ {int lo; int hi; } ;
struct TYPE_7__ {int cmd_num; TYPE_1__ stats_counters_addrs; int reserved1; int drv_stats_counter; int reserved0; } ;
struct TYPE_10__ {TYPE_4__* query; TYPE_2__ hdr; } ;
struct TYPE_8__ {int lo; int hi; } ;
struct TYPE_9__ {TYPE_3__ address; int reserved; int funcID; int index; int kind; } ;


 int BNX2X_MSG_STATS ;
 int DP (int ,char*,int,int ,int ,int ,int ,int ,...) ;

__attribute__((used)) static void bnx2x_dp_stats(struct bnx2x *bp)
{
 int i;

 DP(BNX2X_MSG_STATS, "dumping stats:\n"
    "fw_stats_req\n"
    "    hdr\n"
    "        cmd_num %d\n"
    "        reserved0 %d\n"
    "        drv_stats_counter %d\n"
    "        reserved1 %d\n"
    "        stats_counters_addrs %x %x\n",
    bp->fw_stats_req->hdr.cmd_num,
    bp->fw_stats_req->hdr.reserved0,
    bp->fw_stats_req->hdr.drv_stats_counter,
    bp->fw_stats_req->hdr.reserved1,
    bp->fw_stats_req->hdr.stats_counters_addrs.hi,
    bp->fw_stats_req->hdr.stats_counters_addrs.lo);

 for (i = 0; i < bp->fw_stats_req->hdr.cmd_num; i++) {
  DP(BNX2X_MSG_STATS,
     "query[%d]\n"
     "              kind %d\n"
     "              index %d\n"
     "              funcID %d\n"
     "              reserved %d\n"
     "              address %x %x\n",
     i, bp->fw_stats_req->query[i].kind,
     bp->fw_stats_req->query[i].index,
     bp->fw_stats_req->query[i].funcID,
     bp->fw_stats_req->query[i].reserved,
     bp->fw_stats_req->query[i].address.hi,
     bp->fw_stats_req->query[i].address.lo);
 }
}
