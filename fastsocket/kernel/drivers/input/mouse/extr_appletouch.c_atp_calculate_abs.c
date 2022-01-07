
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int threshold ;

__attribute__((used)) static int atp_calculate_abs(int *xy_sensors, int nb_sensors, int fact,
        int *z, int *fingers)
{
 int i;

 int pcum = 0, psum = 0;
 int is_increasing = 0;

 *fingers = 0;

 for (i = 0; i < nb_sensors; i++) {
  if (xy_sensors[i] < threshold) {
   if (is_increasing)
    is_increasing = 0;

   continue;
  }
  if (i < 1 ||
      (!is_increasing && xy_sensors[i - 1] < xy_sensors[i])) {
   (*fingers)++;
   is_increasing = 1;
  } else if (i > 0 && (xy_sensors[i - 1] - xy_sensors[i] > threshold)) {
   is_increasing = 0;
  }
  pcum += (xy_sensors[i] - threshold) * i;
  psum += (xy_sensors[i] - threshold);
 }

 if (psum > 0) {
  *z = psum;
  return pcum * fact / psum;
 }

 return 0;
}
