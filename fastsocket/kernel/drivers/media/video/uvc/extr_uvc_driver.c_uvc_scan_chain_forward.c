
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_chain {int entities; int dev; } ;
struct uvc_entity {int bNrInPins; int id; int chain; } ;


 int EINVAL ;
 int UVC_ENTITY_IS_ITERM (struct uvc_entity*) ;
 int UVC_ENTITY_TYPE (struct uvc_entity*) ;



 int UVC_TRACE_DESCR ;
 int UVC_TRACE_PROBE ;


 int list_add_tail (int *,int *) ;
 int printk (char*,...) ;
 struct uvc_entity* uvc_entity_by_reference (int ,int ,struct uvc_entity*) ;
 int uvc_trace (int ,char*,int ) ;
 int uvc_trace_param ;

__attribute__((used)) static int uvc_scan_chain_forward(struct uvc_video_chain *chain,
 struct uvc_entity *entity, struct uvc_entity *prev)
{
 struct uvc_entity *forward;
 int found;


 forward = ((void*)0);
 found = 0;

 while (1) {
  forward = uvc_entity_by_reference(chain->dev, entity->id,
   forward);
  if (forward == ((void*)0))
   break;
  if (forward == prev)
   continue;

  switch (UVC_ENTITY_TYPE(forward)) {
  case 128:
   if (forward->bNrInPins != 1) {
    uvc_trace(UVC_TRACE_DESCR, "Extension unit %d "
       "has more than 1 input pin.\n",
       entity->id);
    return -EINVAL;
   }

   list_add_tail(&forward->chain, &chain->entities);
   if (uvc_trace_param & UVC_TRACE_PROBE) {
    if (!found)
     printk(" (->");

    printk(" XU %d", forward->id);
    found = 1;
   }
   break;

  case 130:
  case 132:
  case 131:
  case 129:
   if (UVC_ENTITY_IS_ITERM(forward)) {
    uvc_trace(UVC_TRACE_DESCR, "Unsupported input "
     "terminal %u.\n", forward->id);
    return -EINVAL;
   }

   list_add_tail(&forward->chain, &chain->entities);
   if (uvc_trace_param & UVC_TRACE_PROBE) {
    if (!found)
     printk(" (->");

    printk(" OT %d", forward->id);
    found = 1;
   }
   break;
  }
 }
 if (found)
  printk(")");

 return 0;
}
