
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DiskOnChip {int virtadr; } ;


 int DOCStatus ;
 scalar_t__ DoC_is_Millennium (struct DiskOnChip*) ;
 int NOP ;
 char ReadDOC (int ,int ) ;

__attribute__((used)) static void DoC_Delay(struct DiskOnChip *doc, unsigned short cycles)
{
 volatile char dummy;
 int i;

 for (i = 0; i < cycles; i++) {
  if (DoC_is_Millennium(doc))
   dummy = ReadDOC(doc->virtadr, NOP);
  else
   dummy = ReadDOC(doc->virtadr, DOCStatus);
 }

}
