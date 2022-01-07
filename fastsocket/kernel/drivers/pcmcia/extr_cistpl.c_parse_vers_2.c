
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_char ;
struct TYPE_5__ {int TupleDataLen; void** TupleData; } ;
typedef TYPE_1__ tuple_t ;
struct TYPE_6__ {int vendor; int str; void* nhdr; void* vspec9; void* vspec8; int dindex; void* comply; void* vers; } ;
typedef TYPE_2__ cistpl_vers_2_t ;


 int EINVAL ;
 int get_unaligned_le16 (void**) ;
 int parse_strings (void**,void**,int,int ,int *,int *) ;

__attribute__((used)) static int parse_vers_2(tuple_t *tuple, cistpl_vers_2_t *v2)
{
    u_char *p, *q;

    if (tuple->TupleDataLen < 10)
 return -EINVAL;

    p = tuple->TupleData;
    q = p + tuple->TupleDataLen;

    v2->vers = p[0];
    v2->comply = p[1];
    v2->dindex = get_unaligned_le16(p +2 );
    v2->vspec8 = p[6];
    v2->vspec9 = p[7];
    v2->nhdr = p[8];
    p += 9;
    return parse_strings(p, q, 2, v2->str, &v2->vendor, ((void*)0));
}
