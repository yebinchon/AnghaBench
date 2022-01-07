
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static inline void
capi_ctr_put(struct capi_ctr *card)
{
 module_put(card->owner);
}
