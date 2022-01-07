
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxb {int tea6420_2; int tea6420_1; } ;
struct TYPE_2__ {int output; int input; } ;


 TYPE_1__** TEA6420_cd ;
 int audio ;
 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void tea6420_route_cd(struct mxb *mxb, int idx)
{
 v4l2_subdev_call(mxb->tea6420_1, audio, s_routing,
  TEA6420_cd[idx][0].input, TEA6420_cd[idx][0].output, 0);
 v4l2_subdev_call(mxb->tea6420_2, audio, s_routing,
  TEA6420_cd[idx][1].input, TEA6420_cd[idx][1].output, 0);
}
