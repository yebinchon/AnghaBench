
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int tcat ;
struct tidaw {int flags; } ;
struct tcw {int flags; int tccbl; void* output_count; scalar_t__ w; void* input_count; scalar_t__ r; } ;
struct tccb_tcat {scalar_t__ count; } ;
struct tccb {int * tca; } ;


 scalar_t__ ALIGN (void*,int) ;
 int TCW_FLAGS_OUTPUT_TIDA ;
 int TIDAW_FLAGS_LAST ;
 scalar_t__ calc_cbc_size (struct tidaw*,int) ;
 void* calc_dcw_count (struct tccb*) ;
 int memset (struct tccb_tcat*,int ,int) ;
 int tca_size (struct tccb*) ;
 struct tidaw* tcw_get_data (struct tcw*) ;
 struct tccb* tcw_get_tccb (struct tcw*) ;

void tcw_finalize(struct tcw *tcw, int num_tidaws)
{
 struct tidaw *tidaw;
 struct tccb *tccb;
 struct tccb_tcat *tcat;
 u32 count;


 tidaw = tcw_get_data(tcw);
 if (num_tidaws > 0)
  tidaw[num_tidaws - 1].flags |= TIDAW_FLAGS_LAST;

 tccb = tcw_get_tccb(tcw);
 tcat = (struct tccb_tcat *) &tccb->tca[tca_size(tccb)];
 memset(tcat, 0, sizeof(tcat));

 count = calc_dcw_count(tccb);
 if (tcw->w && (tcw->flags & TCW_FLAGS_OUTPUT_TIDA))
  count += calc_cbc_size(tidaw, num_tidaws);
 if (tcw->r)
  tcw->input_count = count;
 else if (tcw->w)
  tcw->output_count = count;
 tcat->count = ALIGN(count, 4) + 4;

 tcw->tccbl = (sizeof(struct tccb) + tca_size(tccb) +
        sizeof(struct tccb_tcat) - 20) >> 2;
}
