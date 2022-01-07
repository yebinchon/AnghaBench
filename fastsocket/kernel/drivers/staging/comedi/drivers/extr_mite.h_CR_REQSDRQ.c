
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CR_REQS (unsigned int) ;

__attribute__((used)) static inline int CR_REQSDRQ(unsigned drq_line)
{


 return CR_REQS((drq_line & 0x3) | 0x4);
}
