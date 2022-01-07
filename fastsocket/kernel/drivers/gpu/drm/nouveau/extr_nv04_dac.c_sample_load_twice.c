
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_timer {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int EBUSY ;
 int MAX_HBLANK_OSC ;
 int NV_PRMCIO_INP0 ;
 int NV_PRMCIO_INP0__COLOR ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_timer* nouveau_timer (struct nouveau_device*) ;
 int nouveau_timer_wait_eq (struct nouveau_timer*,int,int ,int,int) ;
 int nv_rd08 (struct nouveau_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int sample_load_twice(struct drm_device *dev, bool sense[2])
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_timer *ptimer = nouveau_timer(device);
 int i;

 for (i = 0; i < 2; i++) {
  bool sense_a, sense_b, sense_b_prime;
  int j = 0;
  if (!nouveau_timer_wait_eq(ptimer, 10000000,
        NV_PRMCIO_INP0__COLOR,
        0x00000001, 0x00000000))
   return -EBUSY;
  if (!nouveau_timer_wait_eq(ptimer, 10000000,
        NV_PRMCIO_INP0__COLOR,
        0x00000001, 0x00000001))
   return -EBUSY;
  if (!nouveau_timer_wait_eq(ptimer, 10000000,
        NV_PRMCIO_INP0__COLOR,
        0x00000001, 0x00000000))
   return -EBUSY;

  udelay(100);

  sense_a = nv_rd08(device, NV_PRMCIO_INP0) & 0x10;


  do {
   udelay(100);
   sense_b = nv_rd08(device, NV_PRMCIO_INP0) & 0x10;
   if (sense_a != sense_b) {
    sense_b_prime =
     nv_rd08(device, NV_PRMCIO_INP0) & 0x10;
    if (sense_b == sense_b_prime) {


     sense_a = sense_b;

     sense_b = !sense_a;
    }
   }
  } while ((sense_a != sense_b) && ++j < MAX_HBLANK_OSC);

  if (j == MAX_HBLANK_OSC)

   sense[i] = 0;
  else
   sense[i] = sense_a;
 }

 return 0;
}
