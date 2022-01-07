
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum linux_mountops { ____Placeholder_linux_mountops } linux_mountops ;
typedef int LONG ;


 int ARC_CALL2 (int ,char*,int) ;
 int mount ;

LONG
ArcMount(char *name, enum linux_mountops op)
{
 return ARC_CALL2(mount, name, op);
}
