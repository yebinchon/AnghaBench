
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int Pb100_1map8300 ;
 int Pb100_2map8300 ;
 int sensor_mapwrite (struct gspca_dev*,int ) ;
 int spca561_161rev12A_data1 ;
 int spca561_161rev12A_data2 ;
 int write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static void init_161rev12A(struct gspca_dev *gspca_dev)
{
 write_vector(gspca_dev, spca561_161rev12A_data1);
 sensor_mapwrite(gspca_dev, Pb100_1map8300);

 write_vector(gspca_dev, spca561_161rev12A_data2);
 sensor_mapwrite(gspca_dev, Pb100_2map8300);
}
