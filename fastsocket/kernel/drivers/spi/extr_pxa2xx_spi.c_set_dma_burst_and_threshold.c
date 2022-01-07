
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_device {scalar_t__ controller_data; } ;
struct pxa2xx_spi_chip {int dma_burst_size; } ;
struct chip_data {int dma_burst_size; } ;





 int SSCR1_RFT ;
 int SSCR1_RxTresh (int) ;
 int SSCR1_TFT ;
 int SSCR1_TxTresh (int) ;

__attribute__((used)) static int set_dma_burst_and_threshold(struct chip_data *chip,
    struct spi_device *spi,
    u8 bits_per_word, u32 *burst_code,
    u32 *threshold)
{
 struct pxa2xx_spi_chip *chip_info =
   (struct pxa2xx_spi_chip *)spi->controller_data;
 int bytes_per_word;
 int burst_bytes;
 int thresh_words;
 int req_burst_size;
 int retval = 0;
 if (bits_per_word <= 8)
  bytes_per_word = 1;
 else if (bits_per_word <= 16)
  bytes_per_word = 2;
 else
  bytes_per_word = 4;


 if (chip_info)
  req_burst_size = chip_info->dma_burst_size;
 else {
  switch (chip->dma_burst_size) {
  default:


   chip->dma_burst_size = 128;
  case 128:
   req_burst_size = 8;
   break;
  case 130:
   req_burst_size = 16;
   break;
  case 129:
   req_burst_size = 32;
   break;
  }
 }
 if (req_burst_size <= 8) {
  *burst_code = 128;
  burst_bytes = 8;
 } else if (req_burst_size <= 16) {
  if (bytes_per_word == 1) {

   *burst_code = 128;
   burst_bytes = 8;
   retval = 1;
  } else {
   *burst_code = 130;
   burst_bytes = 16;
  }
 } else {
  if (bytes_per_word == 1) {

   *burst_code = 128;
   burst_bytes = 8;
   retval = 1;
  } else if (bytes_per_word == 2) {

   *burst_code = 130;
   burst_bytes = 16;
   retval = 1;
  } else {
   *burst_code = 129;
   burst_bytes = 32;
  }
 }

 thresh_words = burst_bytes / bytes_per_word;


 *threshold = (SSCR1_RxTresh(thresh_words) & SSCR1_RFT)
   | (SSCR1_TxTresh(16-thresh_words) & SSCR1_TFT);

 return retval;
}
