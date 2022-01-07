
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {scalar_t__ mode; int map_dest; scalar_t__ dest_addr; } ;


 int FIP_DEF_FC_MAP ;
 scalar_t__ FIP_MODE_VN2VN ;
 int FIP_VN_FC_MAP ;
 int hton24 (scalar_t__,int ) ;

__attribute__((used)) static void fcoe_ctlr_map_dest(struct fcoe_ctlr *fip)
{
 if (fip->mode == FIP_MODE_VN2VN)
  hton24(fip->dest_addr, FIP_VN_FC_MAP);
 else
  hton24(fip->dest_addr, FIP_DEF_FC_MAP);
 hton24(fip->dest_addr + 3, 0);
 fip->map_dest = 1;
}
