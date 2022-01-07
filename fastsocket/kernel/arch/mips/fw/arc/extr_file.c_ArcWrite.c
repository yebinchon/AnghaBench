
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;
typedef int PULONG ;
typedef int LONG ;


 int ARC_CALL4 (int ,int ,int ,int ,int ) ;
 int write ;

LONG
ArcWrite(ULONG FileID, PVOID Buffer, ULONG N, PULONG Count)
{
 return ARC_CALL4(write, FileID, Buffer, N, Count);
}
