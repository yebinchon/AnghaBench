
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct tccb_tcat {int dummy; } ;
struct tccb_tcah {int dummy; } ;
struct TYPE_2__ {int tcal; } ;
struct tccb {TYPE_1__ tcah; int * tca; } ;
struct dcw {int * cd; void* cd_count; int count; void* flags; void* cmd; } ;


 int ALIGN (int ,int) ;
 int ENOSPC ;
 struct dcw* ERR_PTR (int ) ;
 int memcpy (int *,void*,void*) ;
 int memset (struct dcw*,int ,int) ;
 int tca_size (struct tccb*) ;

struct dcw *tccb_add_dcw(struct tccb *tccb, size_t tccb_size, u8 cmd, u8 flags,
    void *cd, u8 cd_count, u32 count)
{
 struct dcw *dcw;
 int size;
 int tca_offset;


 tca_offset = tca_size(tccb);
 size = ALIGN(sizeof(struct dcw) + cd_count, 4);
 if (sizeof(struct tccb_tcah) + tca_offset + size +
     sizeof(struct tccb_tcat) > tccb_size)
  return ERR_PTR(-ENOSPC);

 dcw = (struct dcw *) &tccb->tca[tca_offset];
 memset(dcw, 0, size);
 dcw->cmd = cmd;
 dcw->flags = flags;
 dcw->count = count;
 dcw->cd_count = cd_count;
 if (cd)
  memcpy(&dcw->cd[0], cd, cd_count);
 tccb->tcah.tcal += size;
 return dcw;
}
