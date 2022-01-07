
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_2__* pTail; } ;
struct TYPE_4__ {int lo; } ;
struct TYPE_5__ {TYPE_1__ ctl; } ;


 TYPE_3__* dmacHw_GET_DESC_RING (void*) ;
 int dmacHw_REG_CTL_TTFC_MASK ;





__attribute__((used)) static inline int DmaIsFlowController(void *pDescriptor
    ) {
 uint32_t ttfc =
     (dmacHw_GET_DESC_RING(pDescriptor))->pTail->ctl.
     lo & dmacHw_REG_CTL_TTFC_MASK;

 switch (ttfc) {
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 }

 return 0;
}
