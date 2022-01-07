
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drx397xD_state {int dummy; } ;
typedef enum fw_ix { ____Placeholder_fw_ix } fw_ix ;
struct TYPE_2__ {scalar_t__ file; int * data; } ;


 TYPE_1__* fw ;
 int memset (int *,int ,int) ;
 int release_firmware (scalar_t__) ;

__attribute__((used)) static void _drx_release_fw(struct drx397xD_state *s, enum fw_ix ix)
{
 memset(&fw[ix].data[0], 0, sizeof(fw[0].data));
 if (fw[ix].file)
  release_firmware(fw[ix].file);
}
