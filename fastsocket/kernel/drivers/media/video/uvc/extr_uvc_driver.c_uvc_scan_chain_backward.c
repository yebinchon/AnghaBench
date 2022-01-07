
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_chain {int dev; int entities; struct uvc_entity* selector; } ;
struct uvc_entity {int* baSourceID; int bNrInPins; int chain; int id; } ;


 int EINVAL ;
 int UVC_ENTITY_IS_ITERM (struct uvc_entity*) ;
 int UVC_ENTITY_IS_OTERM (struct uvc_entity*) ;
 int UVC_ENTITY_TYPE (struct uvc_entity*) ;






 int UVC_TRACE_DESCR ;
 int UVC_TRACE_PROBE ;




 int list_add_tail (int *,int *) ;
 int printk (char*,...) ;
 struct uvc_entity* uvc_entity_by_id (int ,int) ;
 int uvc_scan_chain_forward (struct uvc_video_chain*,struct uvc_entity*,struct uvc_entity*) ;
 int uvc_trace (int ,char*,int,...) ;
 int uvc_trace_param ;

__attribute__((used)) static int uvc_scan_chain_backward(struct uvc_video_chain *chain,
 struct uvc_entity **_entity)
{
 struct uvc_entity *entity = *_entity;
 struct uvc_entity *term;
 int id = -EINVAL, i;

 switch (UVC_ENTITY_TYPE(entity)) {
 case 130:
 case 129:
  id = entity->baSourceID[0];
  break;

 case 128:

  if (entity->bNrInPins == 1) {
   id = entity->baSourceID[0];
   break;
  }

  if (uvc_trace_param & UVC_TRACE_PROBE)
   printk(" <- IT");

  chain->selector = entity;
  for (i = 0; i < entity->bNrInPins; ++i) {
   id = entity->baSourceID[i];
   term = uvc_entity_by_id(chain->dev, id);
   if (term == ((void*)0) || !UVC_ENTITY_IS_ITERM(term)) {
    uvc_trace(UVC_TRACE_DESCR, "Selector unit %d "
     "input %d isn't connected to an "
     "input terminal\n", entity->id, i);
    return -1;
   }

   if (uvc_trace_param & UVC_TRACE_PROBE)
    printk(" %d", term->id);

   list_add_tail(&term->chain, &chain->entities);
   uvc_scan_chain_forward(chain, term, entity);
  }

  if (uvc_trace_param & UVC_TRACE_PROBE)
   printk("\n");

  id = 0;
  break;

 case 135:
 case 137:
 case 136:
 case 132:
 case 134:
 case 133:
 case 131:
  id = UVC_ENTITY_IS_OTERM(entity) ? entity->baSourceID[0] : 0;
  break;
 }

 if (id <= 0) {
  *_entity = ((void*)0);
  return id;
 }

 entity = uvc_entity_by_id(chain->dev, id);
 if (entity == ((void*)0)) {
  uvc_trace(UVC_TRACE_DESCR, "Found reference to "
   "unknown entity %d.\n", id);
  return -EINVAL;
 }

 *_entity = entity;
 return 0;
}
