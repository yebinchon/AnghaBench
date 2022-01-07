
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw1 {scalar_t__ cda; int count; int flags; int cmd_code; } ;
typedef scalar_t__ addr_t ;
typedef int __u8 ;
typedef scalar_t__ __u32 ;
typedef int __u16 ;


 int CCW_FLAG_CC ;

__attribute__((used)) static inline struct ccw1 *
tape_ccw_cc(struct ccw1 *ccw, __u8 cmd_code, __u16 memsize, void *cda)
{
 ccw->cmd_code = cmd_code;
 ccw->flags = CCW_FLAG_CC;
 ccw->count = memsize;
 ccw->cda = (__u32)(addr_t) cda;
 return ccw + 1;
}
