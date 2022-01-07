
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int READ_BUFFER ;
 char const TEST_UNIT_READY ;
 int spi_execute (struct scsi_device*,char const*,int ,int*,int,int *) ;

__attribute__((used)) static int
spi_dv_device_get_echo_buffer(struct scsi_device *sdev, u8 *buffer)
{
 int l, result;






 const char spi_test_unit_ready[] = {
  TEST_UNIT_READY, 0, 0, 0, 0, 0
 };

 const char spi_read_buffer_descriptor[] = {
  READ_BUFFER, 0x0b, 0, 0, 0, 0, 0, 0, 4, 0
 };







 for (l = 0; ; l++) {
  result = spi_execute(sdev, spi_test_unit_ready, DMA_NONE,
         ((void*)0), 0, ((void*)0));

  if(result) {
   if(l >= 3)
    return 0;
  } else {

   break;
  }
 }

 result = spi_execute(sdev, spi_read_buffer_descriptor,
        DMA_FROM_DEVICE, buffer, 4, ((void*)0));

 if (result)

  return 0;

 return buffer[3] + ((buffer[2] & 0x1f) << 8);
}
