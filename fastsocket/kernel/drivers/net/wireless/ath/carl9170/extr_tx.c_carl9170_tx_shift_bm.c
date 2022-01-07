
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct carl9170_sta_tid {int bsn; scalar_t__ snx; int bitmap; } ;
struct ar9170 {int dummy; } ;


 scalar_t__ CARL9170_BAW_BITS ;
 scalar_t__ SEQ_DIFF (scalar_t__,int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int bitmap_empty (int ,scalar_t__) ;
 int bitmap_shift_right (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int test_and_clear_bit (scalar_t__,int ) ;

__attribute__((used)) static void carl9170_tx_shift_bm(struct ar9170 *ar,
 struct carl9170_sta_tid *tid_info, u16 seq)
{
 u16 off;

 off = SEQ_DIFF(seq, tid_info->bsn);

 if (WARN_ON_ONCE(off >= CARL9170_BAW_BITS))
  return;







 WARN_ON_ONCE(!test_and_clear_bit(off, tid_info->bitmap));

 off = SEQ_DIFF(tid_info->snx, tid_info->bsn);
 if (WARN_ON_ONCE(off >= CARL9170_BAW_BITS))
  return;

 if (!bitmap_empty(tid_info->bitmap, off))
  off = find_first_bit(tid_info->bitmap, off);

 tid_info->bsn += off;
 tid_info->bsn &= 0x0fff;

 bitmap_shift_right(tid_info->bitmap, tid_info->bitmap,
      off, CARL9170_BAW_BITS);
}
