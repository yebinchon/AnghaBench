
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LONG ;


 int ARC_CALL3 (int ,int ,int ,int ) ;
 int set_finfo ;

LONG ArcSetFileInformation(ULONG FileID, ULONG AttributeFlags,
                           ULONG AttributeMask)
{
 return ARC_CALL3(set_finfo, FileID, AttributeFlags, AttributeMask);
}
