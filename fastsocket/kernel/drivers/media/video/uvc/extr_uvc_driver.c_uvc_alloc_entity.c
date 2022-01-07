
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uvc_entity {int type; unsigned int bNrInPins; int * baSourceID; int id; } ;
typedef int __u8 ;


 int GFP_KERNEL ;
 int UVC_TERM_OUTPUT ;
 struct uvc_entity* kzalloc (unsigned int,int ) ;

__attribute__((used)) static struct uvc_entity *uvc_alloc_entity(u16 type, u8 id,
  unsigned int num_pads, unsigned int extra_size)
{
 struct uvc_entity *entity;
 unsigned int num_inputs;
 unsigned int size;

 num_inputs = (type & UVC_TERM_OUTPUT) ? num_pads : num_pads - 1;
 size = sizeof(*entity) + extra_size + num_inputs;
 entity = kzalloc(size, GFP_KERNEL);
 if (entity == ((void*)0))
  return ((void*)0);

 entity->id = id;
 entity->type = type;

 entity->bNrInPins = num_inputs;
 entity->baSourceID = ((__u8 *)entity) + sizeof(*entity) + extra_size;

 return entity;
}
