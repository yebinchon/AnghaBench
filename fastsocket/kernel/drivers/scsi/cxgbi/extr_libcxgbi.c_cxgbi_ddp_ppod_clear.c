
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_pagepod {int dummy; } ;


 int memset (struct cxgbi_pagepod*,int ,int) ;

void cxgbi_ddp_ppod_clear(struct cxgbi_pagepod *ppod)
{
 memset(ppod, 0, sizeof(*ppod));
}
