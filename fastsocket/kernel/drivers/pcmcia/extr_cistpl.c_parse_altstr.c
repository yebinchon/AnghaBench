
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int TupleDataLen; scalar_t__ TupleData; } ;
typedef TYPE_1__ tuple_t ;
struct TYPE_6__ {int ns; int ofs; int str; } ;
typedef TYPE_2__ cistpl_altstr_t ;


 int CISTPL_MAX_ALTSTR_STRINGS ;
 int parse_strings (int *,int *,int ,int ,int ,int *) ;

__attribute__((used)) static int parse_altstr(tuple_t *tuple, cistpl_altstr_t *altstr)
{
    u_char *p, *q;

    p = (u_char *)tuple->TupleData;
    q = p + tuple->TupleDataLen;

    return parse_strings(p, q, CISTPL_MAX_ALTSTR_STRINGS,
    altstr->str, altstr->ofs, &altstr->ns);
}
