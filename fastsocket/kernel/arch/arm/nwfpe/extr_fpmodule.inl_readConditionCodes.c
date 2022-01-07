
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CC_MASK ;
 unsigned long readCPSR () ;

__attribute__((used)) static inline unsigned long readConditionCodes(void)
{



 return (readCPSR() & CC_MASK);

}
