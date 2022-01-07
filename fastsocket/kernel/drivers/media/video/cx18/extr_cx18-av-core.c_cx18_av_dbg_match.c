
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dbg_match {scalar_t__ type; int addr; } ;


 scalar_t__ V4L2_CHIP_MATCH_HOST ;

__attribute__((used)) static inline int cx18_av_dbg_match(const struct v4l2_dbg_match *match)
{
 return match->type == V4L2_CHIP_MATCH_HOST && match->addr == 1;
}
