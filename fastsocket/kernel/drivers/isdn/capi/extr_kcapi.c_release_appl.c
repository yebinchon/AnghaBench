
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct capi_ctr {int (* release_appl ) (struct capi_ctr*,int ) ;} ;


 int DBG (char*,int ) ;
 int capi_ctr_put (struct capi_ctr*) ;
 int stub1 (struct capi_ctr*,int ) ;

__attribute__((used)) static void release_appl(struct capi_ctr *card, u16 applid)
{
 DBG("applid %#x", applid);

 card->release_appl(card, applid);
 capi_ctr_put(card);
}
