
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HDAPS_PORT_XPOS ;
 int HDAPS_PORT_YPOS ;
 int __hdaps_read_pair (int ,int ,int *,int *) ;
 int rest_x ;
 int rest_y ;

__attribute__((used)) static void hdaps_calibrate(void)
{
 __hdaps_read_pair(HDAPS_PORT_XPOS, HDAPS_PORT_YPOS, &rest_x, &rest_y);
}
