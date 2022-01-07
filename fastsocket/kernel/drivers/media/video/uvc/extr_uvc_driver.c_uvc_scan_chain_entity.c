
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_chain {int entities; struct uvc_entity* selector; struct uvc_entity* processing; } ;
struct uvc_entity {int id; int bNrInPins; int chain; } ;


 int UVC_ENTITY_IS_ITERM (struct uvc_entity*) ;
 int UVC_ENTITY_TYPE (struct uvc_entity*) ;



 int UVC_TRACE_DESCR ;
 int UVC_TRACE_PROBE ;




 int list_add_tail (int *,int *) ;
 int printk (char*,int) ;
 int uvc_trace (int ,char*,...) ;
 int uvc_trace_param ;

__attribute__((used)) static int uvc_scan_chain_entity(struct uvc_video_chain *chain,
 struct uvc_entity *entity)
{
 switch (UVC_ENTITY_TYPE(entity)) {
 case 130:
  if (uvc_trace_param & UVC_TRACE_PROBE)
   printk(" <- XU %d", entity->id);

  if (entity->bNrInPins != 1) {
   uvc_trace(UVC_TRACE_DESCR, "Extension unit %d has more "
    "than 1 input pin.\n", entity->id);
   return -1;
  }

  break;

 case 129:
  if (uvc_trace_param & UVC_TRACE_PROBE)
   printk(" <- PU %d", entity->id);

  if (chain->processing != ((void*)0)) {
   uvc_trace(UVC_TRACE_DESCR, "Found multiple "
    "Processing Units in chain.\n");
   return -1;
  }

  chain->processing = entity;
  break;

 case 128:
  if (uvc_trace_param & UVC_TRACE_PROBE)
   printk(" <- SU %d", entity->id);


  if (entity->bNrInPins == 1)
   break;

  if (chain->selector != ((void*)0)) {
   uvc_trace(UVC_TRACE_DESCR, "Found multiple Selector "
    "Units in chain.\n");
   return -1;
  }

  chain->selector = entity;
  break;

 case 132:
 case 134:
 case 133:
  if (uvc_trace_param & UVC_TRACE_PROBE)
   printk(" <- IT %d\n", entity->id);

  break;

 case 131:
  if (UVC_ENTITY_IS_ITERM(entity)) {
   if (uvc_trace_param & UVC_TRACE_PROBE)
    printk(" <- IT %d\n", entity->id);
  } else {
   if (uvc_trace_param & UVC_TRACE_PROBE)
    printk(" OT %d", entity->id);
  }

  break;

 default:
  uvc_trace(UVC_TRACE_DESCR, "Unsupported entity type "
   "0x%04x found in chain.\n", UVC_ENTITY_TYPE(entity));
  return -1;
 }

 list_add_tail(&entity->chain, &chain->entities);
 return 0;
}
