
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_sge {int dummy; } ;
struct TYPE_2__ {struct be_sge* sgl; } ;
struct be_mcc_wrb {TYPE_1__ payload; } ;



__attribute__((used)) static inline struct be_sge *nonembedded_sgl(struct be_mcc_wrb *wrb)
{
 return &wrb->payload.sgl[0];
}
