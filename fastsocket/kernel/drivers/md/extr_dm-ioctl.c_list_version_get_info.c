
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vers_iter {char* end; TYPE_1__* vers; TYPE_1__* old_vers; int flags; } ;
struct target_type {int name; int * version; } ;
struct TYPE_2__ {int name; scalar_t__ next; int * version; } ;


 int DM_BUFFER_FULL_FLAG ;
 TYPE_1__* align_ptr (void*) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void list_version_get_info(struct target_type *tt, void *param)
{
    struct vers_iter *info = param;


    if ((char *)info->vers + sizeof(tt->version) + strlen(tt->name) + 1 >
 info->end) {

 info->flags = DM_BUFFER_FULL_FLAG;
 return;
    }

    if (info->old_vers)
 info->old_vers->next = (uint32_t) ((void *)info->vers -
        (void *)info->old_vers);
    info->vers->version[0] = tt->version[0];
    info->vers->version[1] = tt->version[1];
    info->vers->version[2] = tt->version[2];
    info->vers->next = 0;
    strcpy(info->vers->name, tt->name);

    info->old_vers = info->vers;
    info->vers = align_ptr(((void *) ++info->vers) + strlen(tt->name) + 1);
}
