
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; unsigned short port; int regname; } ;
typedef TYPE_1__ act2000_card ;


 int ACT2000_FLAGS_PVALID ;
 int ACT2000_PORTLEN ;
 int EBUSY ;
 int ISA_REGION ;
 int release_region (unsigned short,int ) ;
 int * request_region (unsigned short,int ,int ) ;

int
act2000_isa_config_port(act2000_card * card, unsigned short portbase)
{
        if (card->flags & ACT2000_FLAGS_PVALID) {
                release_region(card->port, ISA_REGION);
                card->flags &= ~ACT2000_FLAGS_PVALID;
        }
 if (request_region(portbase, ACT2000_PORTLEN, card->regname) == ((void*)0))
  return -EBUSY;
 else {
                card->port = portbase;
                card->flags |= ACT2000_FLAGS_PVALID;
                return 0;
        }
}
