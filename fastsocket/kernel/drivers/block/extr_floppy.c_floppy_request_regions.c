
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_region {scalar_t__ offset; int size; } ;
struct TYPE_2__ {scalar_t__ address; } ;


 struct io_region const* ARRAY_END (struct io_region*) ;
 int DPRINT (char*,scalar_t__) ;
 int EBUSY ;
 TYPE_1__* FDCS ;
 int floppy_release_allocated_regions (int,struct io_region const*) ;
 struct io_region* io_regions ;
 int request_region (scalar_t__,int ,char*) ;

__attribute__((used)) static int floppy_request_regions(int fdc)
{
 const struct io_region *p;

 for (p = io_regions; p < ARRAY_END(io_regions); p++) {
  if (!request_region(FDCS->address + p->offset, p->size, "floppy")) {
   DPRINT("Floppy io-port 0x%04lx in use\n", FDCS->address + p->offset);
   floppy_release_allocated_regions(fdc, p);
   return -EBUSY;
  }
 }
 return 0;
}
