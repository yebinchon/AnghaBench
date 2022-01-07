
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACT2000_PORTLEN ;
 int ISA_REGION ;
 int act2000_isa_reset (unsigned short) ;
 int release_region (unsigned short,int ) ;
 scalar_t__ request_region (unsigned short,int ,char*) ;

int
act2000_isa_detect(unsigned short portbase)
{
        int ret = 0;

 if (request_region(portbase, ACT2000_PORTLEN, "act2000isa")) {
                ret = act2000_isa_reset(portbase);
  release_region(portbase, ISA_REGION);
 }
        return ret;
}
