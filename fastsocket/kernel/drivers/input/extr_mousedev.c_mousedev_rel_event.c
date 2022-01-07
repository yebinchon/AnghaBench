
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dx; int dy; int dz; } ;
struct mousedev {TYPE_1__ packet; } ;






__attribute__((used)) static void mousedev_rel_event(struct mousedev *mousedev,
    unsigned int code, int value)
{
 switch (code) {
 case 129:
  mousedev->packet.dx += value;
  break;

 case 128:
  mousedev->packet.dy -= value;
  break;

 case 130:
  mousedev->packet.dz -= value;
  break;
 }
}
