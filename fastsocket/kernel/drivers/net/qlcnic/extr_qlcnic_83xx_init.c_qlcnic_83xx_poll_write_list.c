
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;
struct qlc_83xx_quad_entry {int ar_addr; int ar_value; int dr_value; int dr_addr; } ;
struct qlc_83xx_poll {int status; int mask; } ;
struct qlc_83xx_entry_hdr {int count; scalar_t__ delay; } ;


 int qlcnic_83xx_poll_reg (struct qlcnic_adapter*,int ,long,int ,int ) ;
 int qlcnic_83xx_wrt_reg_indirect (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static void qlcnic_83xx_poll_write_list(struct qlcnic_adapter *p_dev,
     struct qlc_83xx_entry_hdr *p_hdr)
{
 int i;
 long delay;
 struct qlc_83xx_quad_entry *entry;
 struct qlc_83xx_poll *poll;

 poll = (struct qlc_83xx_poll *)((char *)p_hdr +
     sizeof(struct qlc_83xx_entry_hdr));
 entry = (struct qlc_83xx_quad_entry *)((char *)poll +
            sizeof(struct qlc_83xx_poll));
 delay = (long)p_hdr->delay;

 for (i = 0; i < p_hdr->count; i++, entry++) {
  qlcnic_83xx_wrt_reg_indirect(p_dev, entry->dr_addr,
          entry->dr_value);
  qlcnic_83xx_wrt_reg_indirect(p_dev, entry->ar_addr,
          entry->ar_value);
  if (delay)
   qlcnic_83xx_poll_reg(p_dev, entry->ar_addr, delay,
          poll->mask, poll->status);
 }
}
