
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlc_83xx_entry_hdr {scalar_t__ delay; } ;


 int mdelay (int ) ;

__attribute__((used)) static void qlcnic_83xx_pause(struct qlc_83xx_entry_hdr *p_hdr)
{
 if (p_hdr->delay)
  mdelay((u32)((long)p_hdr->delay));
}
