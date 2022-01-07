
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_dropped; } ;
struct qeth_card {TYPE_1__ stats; } ;
struct qdio_buffer {TYPE_2__* element; } ;
struct TYPE_4__ {unsigned int sflags; } ;


 int QERR ;
 int QETH_DBF_TEXT (int ,int,char const*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,unsigned int) ;
 int TRACE ;

int qeth_check_qdio_errors(struct qeth_card *card, struct qdio_buffer *buf,
  unsigned int qdio_error, const char *dbftext)
{
 if (qdio_error) {
  QETH_DBF_TEXT(TRACE, 2, dbftext);
  QETH_DBF_TEXT(QERR, 2, dbftext);
  QETH_DBF_TEXT_(QERR, 2, " F15=%02X",
          buf->element[15].sflags);
  QETH_DBF_TEXT_(QERR, 2, " F14=%02X",
          buf->element[14].sflags);
  QETH_DBF_TEXT_(QERR, 2, " qerr=%X", qdio_error);
  if ((buf->element[15].sflags) == 0x12) {
   card->stats.rx_dropped++;
   return 0;
  } else
   return 1;
 }
 return 0;
}
