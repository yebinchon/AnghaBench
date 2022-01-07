
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ar5416IniArray {int ia_rows; } ;


 int DO_DELAY (unsigned int) ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int INI_RA (struct ar5416IniArray const*,int,int) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

void ath9k_hw_write_array(struct ath_hw *ah, const struct ar5416IniArray *array,
     int column, unsigned int *writecnt)
{
 int r;

 ENABLE_REGWRITE_BUFFER(ah);
 for (r = 0; r < array->ia_rows; r++) {
  REG_WRITE(ah, INI_RA(array, r, 0),
     INI_RA(array, r, column));
  DO_DELAY(*writecnt);
 }
 REGWRITE_BUFFER_FLUSH(ah);
}
