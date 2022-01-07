
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slb_allocate_realmode (unsigned long) ;

__attribute__((used)) static void slb_allocate(unsigned long ea)
{



 slb_allocate_realmode(ea);
}
