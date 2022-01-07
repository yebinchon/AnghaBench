
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_bigint {int dummy; } ;
typedef enum linux_seekmode { ____Placeholder_linux_seekmode } linux_seekmode ;
typedef int ULONG ;
typedef int LONG ;


 int ARC_CALL3 (int ,int ,struct linux_bigint*,int) ;
 int seek ;

LONG
ArcSeek(ULONG FileID, struct linux_bigint *Position, enum linux_seekmode SeekMode)
{
 return ARC_CALL3(seek, FileID, Position, SeekMode);
}
