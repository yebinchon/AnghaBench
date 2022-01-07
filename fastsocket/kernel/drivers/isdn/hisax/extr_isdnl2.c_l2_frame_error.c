
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int INDICATION ;
 int MDL_ERROR ;
 int stub1 (struct PStack*,int,void*) ;

__attribute__((used)) static void
l2_frame_error(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 st->ma.layer(st, MDL_ERROR | INDICATION, arg);
}
