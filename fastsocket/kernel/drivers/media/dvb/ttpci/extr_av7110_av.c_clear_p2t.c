
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110_p2t {scalar_t__ frags; scalar_t__ pos; int pes; } ;


 int TS_SIZE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void clear_p2t(struct av7110_p2t *p)
{
 memset(p->pes, 0, TS_SIZE);

 p->pos = 0;
 p->frags = 0;
}
