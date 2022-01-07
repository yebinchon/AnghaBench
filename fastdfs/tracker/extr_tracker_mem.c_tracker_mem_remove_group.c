
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
typedef int FDFSGroupInfo ;


 int ENOENT ;
 TYPE_1__ g_groups ;

__attribute__((used)) static int tracker_mem_remove_group(FDFSGroupInfo **groups, FDFSGroupInfo *pGroup)
{
 FDFSGroupInfo **ppGroup;
 FDFSGroupInfo **ppEnd;
 FDFSGroupInfo **pp;

    ppEnd = groups + g_groups.count;
    for (ppGroup=groups; ppGroup<ppEnd; ppGroup++)
    {
        if (*ppGroup == pGroup)
        {
            break;
        }
    }

    if (ppGroup == ppEnd)
    {
        return ENOENT;
    }

    for (pp=ppGroup + 1; pp<ppEnd; pp++)
    {
        *(pp - 1) = *pp;
    }

    return 0;
}
