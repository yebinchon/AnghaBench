
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_request {int* sense; } ;
struct st_cmdstatus {int flags; int deferred; int fixed_format; int uremainder64; int remainder_valid; scalar_t__ have_sense; int sense_hdr; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 int scsi_get_sense_info_fld (int const*,int ,int *) ;
 scalar_t__ scsi_normalize_sense (int*,int ,int *) ;
 int* scsi_sense_desc_find (int const*,int ,int) ;

__attribute__((used)) static void st_analyze_sense(struct st_request *SRpnt, struct st_cmdstatus *s)
{
 const u8 *ucp;
 const u8 *sense = SRpnt->sense;

 s->have_sense = scsi_normalize_sense(SRpnt->sense,
    SCSI_SENSE_BUFFERSIZE, &s->sense_hdr);
 s->flags = 0;

 if (s->have_sense) {
  s->deferred = 0;
  s->remainder_valid =
   scsi_get_sense_info_fld(sense, SCSI_SENSE_BUFFERSIZE, &s->uremainder64);
  switch (sense[0] & 0x7f) {
  case 0x71:
   s->deferred = 1;
  case 0x70:
   s->fixed_format = 1;
   s->flags = sense[2] & 0xe0;
   break;
  case 0x73:
   s->deferred = 1;
  case 0x72:
   s->fixed_format = 0;
   ucp = scsi_sense_desc_find(sense, SCSI_SENSE_BUFFERSIZE, 4);
   s->flags = ucp ? (ucp[3] & 0xe0) : 0;
   break;
  }
 }
}
