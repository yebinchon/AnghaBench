
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

__attribute__((used)) static void ar9003_hw_detect_outlier(int *mp_coeff, int nmeasurement,
         int max_delta)
{
 int mp_max = -64, max_idx = 0;
 int mp_min = 63, min_idx = 0;
 int mp_avg = 0, i, outlier_idx = 0, mp_count = 0;


 for (i = 0; i < nmeasurement; i++) {
  if (mp_coeff[i] > mp_max) {
   mp_max = mp_coeff[i];
   max_idx = i;
  } else if (mp_coeff[i] < mp_min) {
   mp_min = mp_coeff[i];
   min_idx = i;
  }
 }


 for (i = 0; i < nmeasurement; i++) {
  if ((abs(mp_coeff[i]) < abs(mp_max)) ||
      (abs(mp_coeff[i]) < abs(mp_min))) {
   mp_avg += mp_coeff[i];
   mp_count++;
  }
 }





 if (mp_count)
  mp_avg /= mp_count;
 else
  mp_avg = mp_coeff[nmeasurement - 1];


 if (abs(mp_max - mp_min) > max_delta) {
  if (abs(mp_max - mp_avg) > abs(mp_min - mp_avg))
   outlier_idx = max_idx;
  else
   outlier_idx = min_idx;

  mp_coeff[outlier_idx] = mp_avg;
 }
}
