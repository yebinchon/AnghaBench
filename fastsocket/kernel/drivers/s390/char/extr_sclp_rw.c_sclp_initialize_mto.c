
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct write_sccb {TYPE_1__ header; } ;
struct sclp_buffer {char* current_line; scalar_t__ current_length; struct write_sccb* sccb; } ;
struct mto {int length; int type; int line_type_flags; } ;
typedef int addr_t ;


 int ENOMEM ;
 int LNTPFLGS_ENDTEXT ;
 int MAX_SCCB_ROOM ;
 int memset (struct mto*,int ,int) ;

__attribute__((used)) static int
sclp_initialize_mto(struct sclp_buffer *buffer, int max_len)
{
 struct write_sccb *sccb;
 struct mto *mto;
 int mto_size;


 mto_size = sizeof(struct mto) + max_len;


 sccb = buffer->sccb;
 if ((MAX_SCCB_ROOM - sccb->header.length) < mto_size)
  return -ENOMEM;


 mto = (struct mto *)(((addr_t) sccb) + sccb->header.length);





 memset(mto, 0, sizeof(struct mto));
 mto->length = sizeof(struct mto);
 mto->type = 4;
 mto->line_type_flags = LNTPFLGS_ENDTEXT;


 buffer->current_line = (char *) (mto + 1);
 buffer->current_length = 0;

 return 0;
}
