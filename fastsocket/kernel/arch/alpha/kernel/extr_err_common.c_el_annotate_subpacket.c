
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_subpacket_annotation {scalar_t__ class; scalar_t__ type; scalar_t__ revision; char** annotation; int description; struct el_subpacket_annotation* next; } ;
struct el_subpacket {scalar_t__ class; scalar_t__ type; scalar_t__ revision; int length; } ;


 int err_print_prefix ;
 int mchk_dump_mem (struct el_subpacket*,int ,char**) ;
 int printk (char*,int ,int ) ;
 struct el_subpacket_annotation* subpacket_annotation_list ;

void
el_annotate_subpacket(struct el_subpacket *header)
{
 struct el_subpacket_annotation *a;
 char **annotation = ((void*)0);

 for (a = subpacket_annotation_list; a; a = a->next) {
  if (a->class == header->class &&
      a->type == header->type &&
      a->revision == header->revision) {



   annotation = a->annotation;
   printk("%s  %s\n", err_print_prefix, a->description);
   break;
  }
 }

 mchk_dump_mem(header, header->length, annotation);
}
