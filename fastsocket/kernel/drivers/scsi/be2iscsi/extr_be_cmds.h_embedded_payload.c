
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* embedded_payload; } ;
struct be_mcc_wrb {TYPE_1__ payload; } ;



__attribute__((used)) static inline void *embedded_payload(struct be_mcc_wrb *wrb)
{
 return wrb->payload.embedded_payload;
}
