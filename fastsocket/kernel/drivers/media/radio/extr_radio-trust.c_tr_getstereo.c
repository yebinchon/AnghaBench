
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust {int curstereo; } ;



__attribute__((used)) static int tr_getstereo(struct trust *tr)
{

 return tr->curstereo;
}
