
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dbg_match {int type; int addr; } ;




int v4l2_chip_match_host(const struct v4l2_dbg_match *match)
{
 switch (match->type) {
 case 128:
  return match->addr == 0;
 default:
  return 0;
 }
}
