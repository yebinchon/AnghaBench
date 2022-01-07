
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef size_t s32 ;
struct TYPE_3__ {size_t priv; } ;


 int ARRAY_SIZE (int ) ;
 size_t IMAGE_640 ;
 int c04 ;
 int ctrl_in (struct gspca_dev*,int,int,int,int,int,int ) ;
 int ctrl_out (struct gspca_dev*,int,int,int,int,int,int *) ;
 int * dat_post1 ;
 int * dat_post2 ;
 int * dat_post3 ;
 int * dat_post4 ;
 int * dat_post5 ;
 int * dat_post6 ;
 int * dat_post7 ;
 int * dat_post8 ;
 size_t fetch_validx (struct gspca_dev*,int ,int ) ;
 int keep_on_fetching_validx (struct gspca_dev*,int ,int ,size_t) ;
 int ov9655_camera_settings (struct gspca_dev*) ;
 int ** tbl_1280 ;
 int ** tbl_640 ;
 int tbl_init_post_alt ;
 int* tbl_length ;

__attribute__((used)) static int ov9655_init_post_alt(struct gspca_dev *gspca_dev)
{
 s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;
 s32 n;
 s32 i;
 u8 **tbl;

 ctrl_out(gspca_dev, 0x40, 5, 0x0001, 0x0000, 0, ((void*)0));

 tbl = (reso == IMAGE_640) ? tbl_640 : tbl_1280;

 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200,
   tbl_length[0], tbl[0]);
 for (i = 1; i < 7; i++)
  ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200,
    tbl_length[i], tbl[i]);
 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200,
   tbl_length[7], tbl[7]);

 n = fetch_validx(gspca_dev, tbl_init_post_alt,
   ARRAY_SIZE(tbl_init_post_alt));

 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post1);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);

 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post1);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);

 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);
 ctrl_in(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
 keep_on_fetching_validx(gspca_dev, tbl_init_post_alt,
     ARRAY_SIZE(tbl_init_post_alt), n);

 ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post1);

 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 4, dat_post2);
 ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post3);

 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 4, dat_post4);
 ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post5);

 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 4, dat_post6);
 ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post7);

 ctrl_out(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post8);

 ov9655_camera_settings(gspca_dev);

 return 0;
}
