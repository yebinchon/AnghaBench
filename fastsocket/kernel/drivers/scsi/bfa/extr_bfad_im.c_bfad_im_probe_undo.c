
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int * im; } ;


 int bfad_destroy_workq (int *) ;
 int kfree (int *) ;

void
bfad_im_probe_undo(struct bfad_s *bfad)
{
 if (bfad->im) {
  bfad_destroy_workq(bfad->im);
  kfree(bfad->im);
  bfad->im = ((void*)0);
 }
}
