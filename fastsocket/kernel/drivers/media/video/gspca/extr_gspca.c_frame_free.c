
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gspca_dev {int nframes; int memory; int * capt_file; scalar_t__ frsz; TYPE_1__* frame; int * frbuf; } ;
struct TYPE_2__ {int * data; } ;


 int D_STREAM ;
 int GSPCA_MEMORY_NO ;
 int PDEBUG (int ,char*) ;
 int vfree (int *) ;

__attribute__((used)) static void frame_free(struct gspca_dev *gspca_dev)
{
 int i;

 PDEBUG(D_STREAM, "frame free");
 if (gspca_dev->frbuf != ((void*)0)) {
  vfree(gspca_dev->frbuf);
  gspca_dev->frbuf = ((void*)0);
  for (i = 0; i < gspca_dev->nframes; i++)
   gspca_dev->frame[i].data = ((void*)0);
 }
 gspca_dev->nframes = 0;
 gspca_dev->frsz = 0;
 gspca_dev->capt_file = ((void*)0);
 gspca_dev->memory = GSPCA_MEMORY_NO;
}
