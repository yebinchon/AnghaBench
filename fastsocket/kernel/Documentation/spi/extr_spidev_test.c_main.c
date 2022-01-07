
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int SPI_IOC_RD_BITS_PER_WORD ;
 int SPI_IOC_RD_MAX_SPEED_HZ ;
 int SPI_IOC_RD_MODE ;
 int SPI_IOC_WR_BITS_PER_WORD ;
 int SPI_IOC_WR_MAX_SPEED_HZ ;
 int SPI_IOC_WR_MODE ;
 int bits ;
 int close (int) ;
 int device ;
 int ioctl (int,int ,int*) ;
 int mode ;
 int open (int ,int ) ;
 int pabort (char*) ;
 int parse_opts (int,char**) ;
 int printf (char*,int,...) ;
 int speed ;
 int transfer (int) ;

int main(int argc, char *argv[])
{
 int ret = 0;
 int fd;

 parse_opts(argc, argv);

 fd = open(device, O_RDWR);
 if (fd < 0)
  pabort("can't open device");




 ret = ioctl(fd, SPI_IOC_WR_MODE, &mode);
 if (ret == -1)
  pabort("can't set spi mode");

 ret = ioctl(fd, SPI_IOC_RD_MODE, &mode);
 if (ret == -1)
  pabort("can't get spi mode");




 ret = ioctl(fd, SPI_IOC_WR_BITS_PER_WORD, &bits);
 if (ret == -1)
  pabort("can't set bits per word");

 ret = ioctl(fd, SPI_IOC_RD_BITS_PER_WORD, &bits);
 if (ret == -1)
  pabort("can't get bits per word");




 ret = ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
 if (ret == -1)
  pabort("can't set max speed hz");

 ret = ioctl(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed);
 if (ret == -1)
  pabort("can't get max speed hz");

 printf("spi mode: %d\n", mode);
 printf("bits per word: %d\n", bits);
 printf("max speed: %d Hz (%d KHz)\n", speed, speed/1000);

 transfer(fd);

 close(fd);

 return ret;
}
