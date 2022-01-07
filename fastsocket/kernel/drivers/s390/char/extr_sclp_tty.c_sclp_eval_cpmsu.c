
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gds_vector {int length; scalar_t__ gds_id; } ;


 scalar_t__ GDS_ID_TEXTCMD ;
 int sclp_eval_textcmd (struct gds_vector*) ;

__attribute__((used)) static inline void sclp_eval_cpmsu(struct gds_vector *v)
{
 void *end;

 end = (void *) v + v->length;
 for (v = v + 1; (void *) v < end; v = (void *) v + v->length)
  if (v->gds_id == GDS_ID_TEXTCMD)
   sclp_eval_textcmd(v);
}
