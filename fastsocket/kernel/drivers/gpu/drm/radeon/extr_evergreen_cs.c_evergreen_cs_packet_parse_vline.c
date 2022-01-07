
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint32_t ;
struct radeon_cs_parser {int dummy; } ;
 int r600_cs_common_vline_parse (struct radeon_cs_parser*,scalar_t__ const*,scalar_t__ const*) ;

__attribute__((used)) static int evergreen_cs_packet_parse_vline(struct radeon_cs_parser *p)
{

 static uint32_t vline_start_end[6] = {
  129 + 135,
  129 + 134,
  129 + 133,
  129 + 132,
  129 + 131,
  129 + 130
 };
 static uint32_t vline_status[6] = {
  128 + 135,
  128 + 134,
  128 + 133,
  128 + 132,
  128 + 131,
  128 + 130
 };

 return r600_cs_common_vline_parse(p, vline_start_end, vline_status);
}
