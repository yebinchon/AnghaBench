
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* p_bdid ;
struct TYPE_3__ {char* brdsuffix; int brdno; } ;


 TYPE_1__ mvme_bdid ;
 int sprintf (char*,char*,int,char*) ;

__attribute__((used)) static void mvme16x_get_model(char *model)
{
    p_bdid p = &mvme_bdid;
    char suf[4];

    suf[1] = p->brdsuffix[0];
    suf[2] = p->brdsuffix[1];
    suf[3] = '\0';
    suf[0] = suf[1] ? '-' : '\0';

    sprintf(model, "Motorola MVME%x%s", p->brdno, suf);
}
