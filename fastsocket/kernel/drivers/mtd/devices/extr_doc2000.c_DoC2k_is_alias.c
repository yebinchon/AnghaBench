
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DiskOnChip {scalar_t__ physadr; int virtadr; } ;


 int AliasResolution ;
 int ReadDOC (int ,int ) ;
 int WriteDOC (int,int ,int ) ;

__attribute__((used)) static int DoC2k_is_alias(struct DiskOnChip *doc1, struct DiskOnChip *doc2)
{
 int tmp1, tmp2, retval;
 if (doc1->physadr == doc2->physadr)
  return 1;






 tmp1 = ReadDOC(doc1->virtadr, AliasResolution);
 tmp2 = ReadDOC(doc2->virtadr, AliasResolution);
 if (tmp1 != tmp2)
  return 0;

 WriteDOC((tmp1 + 1) % 0xff, doc1->virtadr, AliasResolution);
 tmp2 = ReadDOC(doc2->virtadr, AliasResolution);
 if (tmp2 == (tmp1 + 1) % 0xff)
  retval = 1;
 else
  retval = 0;



 WriteDOC(tmp1, doc1->virtadr, AliasResolution);

 return retval;
}
