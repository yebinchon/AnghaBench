
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int LONG ;


 int ARC_CALL4 (int ,int ,int *,int ,int *) ;
 int read ;

LONG
ArcRead(ULONG FileID, VOID *Buffer, ULONG N, ULONG *Count)
{
 return ARC_CALL4(read, FileID, Buffer, N, Count);
}
