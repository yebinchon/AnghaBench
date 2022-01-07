
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int decodelen; int nbytes; int* decodebuf; int key; } ;
typedef TYPE_1__ isdn_v110_stream ;



__attribute__((used)) static int
ValidHeaderBytes(isdn_v110_stream * v)
{
 int i;
 for (i = 0; (i < v->decodelen) && (i < v->nbytes); i++)
  if ((v->decodebuf[i] & v->key) != 0)
   break;
 return i;
}
