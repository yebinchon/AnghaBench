
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int req_id; } ;
struct fcpio_tag {TYPE_1__ u; } ;



__attribute__((used)) static inline void
fcpio_tag_id_enc(struct fcpio_tag *tag, u32 id)
{
 tag->u.req_id = id;
}
