
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct layer2 {int next_id; int tei; int sapi; } ;



__attribute__((used)) static u_int
l2_newid(struct layer2 *l2)
{
 u_int id;

 id = l2->next_id++;
 if (id == 0x7fff)
  l2->next_id = 1;
 id <<= 16;
 id |= l2->tei << 8;
 id |= l2->sapi;
 return id;
}
