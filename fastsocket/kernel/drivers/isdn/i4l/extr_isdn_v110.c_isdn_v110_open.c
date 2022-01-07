
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char key; int nbits; int nbytes; int framelen; int SyncInit; int dbit; int skbres; int maxsize; int * encodebuf; scalar_t__ b; scalar_t__ introducer; int OfflineFrame; int OnlineFrame; scalar_t__ decodelen; } ;
typedef TYPE_1__ isdn_v110_stream ;


 int GFP_ATOMIC ;


 int V110_OffMatrix_19200 ;
 int V110_OffMatrix_38400 ;
 int V110_OffMatrix_9600 ;
 int V110_OnMatrix_19200 ;
 int V110_OnMatrix_38400 ;
 int V110_OnMatrix_9600 ;
 int kfree (TYPE_1__*) ;
 int * kmalloc (int,int ) ;
 TYPE_1__* kzalloc (int,int ) ;

__attribute__((used)) static isdn_v110_stream *
isdn_v110_open(unsigned char key, int hdrlen, int maxsize)
{
 int i;
 isdn_v110_stream *v;

 if ((v = kzalloc(sizeof(isdn_v110_stream), GFP_ATOMIC)) == ((void*)0))
  return ((void*)0);
 v->key = key;
 v->nbits = 0;
 for (i = 0; key & (1 << i); i++)
  v->nbits++;

 v->nbytes = 8 / v->nbits;
 v->decodelen = 0;

 switch (key) {
  case 128:
   v->OnlineFrame = V110_OnMatrix_38400;
   v->OfflineFrame = V110_OffMatrix_38400;
   break;
  case 129:
   v->OnlineFrame = V110_OnMatrix_19200;
   v->OfflineFrame = V110_OffMatrix_19200;
   break;
  default:
   v->OnlineFrame = V110_OnMatrix_9600;
   v->OfflineFrame = V110_OffMatrix_9600;
   break;
 }
 v->framelen = v->nbytes * 10;
 v->SyncInit = 5;
 v->introducer = 0;
 v->dbit = 1;
 v->b = 0;
 v->skbres = hdrlen;
 v->maxsize = maxsize - hdrlen;
 if ((v->encodebuf = kmalloc(maxsize, GFP_ATOMIC)) == ((void*)0)) {
  kfree(v);
  return ((void*)0);
 }
 return v;
}
