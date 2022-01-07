
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct info_str {int dummy; } ;
struct ahc_transinfo {scalar_t__ offset; int width; int ppr_options; int period; } ;


 int MSG_EXT_PPR_DT_REQ ;
 int ahc_calc_syncsrate (int ) ;
 int copy_info (struct info_str*,char*,...) ;

__attribute__((used)) static void
ahc_format_transinfo(struct info_str *info, struct ahc_transinfo *tinfo)
{
 u_int speed;
 u_int freq;
 u_int mb;

        speed = 3300;
        freq = 0;
 if (tinfo->offset != 0) {
  freq = ahc_calc_syncsrate(tinfo->period);
  speed = freq;
 }
 speed *= (0x01 << tinfo->width);
        mb = speed / 1000;
        if (mb > 0)
  copy_info(info, "%d.%03dMB/s transfers", mb, speed % 1000);
        else
  copy_info(info, "%dKB/s transfers", speed);

 if (freq != 0) {
  copy_info(info, " (%d.%03dMHz%s, offset %d",
    freq / 1000, freq % 1000,
    (tinfo->ppr_options & MSG_EXT_PPR_DT_REQ) != 0
    ? " DT" : "", tinfo->offset);
 }

 if (tinfo->width > 0) {
  if (freq != 0) {
   copy_info(info, ", ");
  } else {
   copy_info(info, " (");
  }
  copy_info(info, "%dbit)", 8 * (0x01 << tinfo->width));
 } else if (freq != 0) {
  copy_info(info, ")");
 }
 copy_info(info, "\n");
}
