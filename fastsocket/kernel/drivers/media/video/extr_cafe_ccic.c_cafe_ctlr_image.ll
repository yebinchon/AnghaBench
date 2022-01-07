; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32 }

@IMGSZ_V_SHIFT = common dso_local global i32 0, align 4
@IMGSZ_V_MASK = common dso_local global i32 0, align 4
@IMGSZ_H_MASK = common dso_local global i32 0, align 4
@REG_IMGSIZE = common dso_local global i32 0, align 4
@REG_IMGOFFSET = common dso_local global i32 0, align 4
@REG_IMGPITCH = common dso_local global i32 0, align 4
@IMGP_YP_MASK = common dso_local global i32 0, align 4
@REG_CTRL0 = common dso_local global i32 0, align 4
@C0_DF_YUV = common dso_local global i32 0, align 4
@C0_YUV_PACKED = common dso_local global i32 0, align 4
@C0_YUVE_YUYV = common dso_local global i32 0, align 4
@C0_DF_MASK = common dso_local global i32 0, align 4
@C0_DF_RGB = common dso_local global i32 0, align 4
@C0_RGBF_444 = common dso_local global i32 0, align 4
@C0_RGB4_XRGB = common dso_local global i32 0, align 4
@C0_RGBF_565 = common dso_local global i32 0, align 4
@C0_RGB5_BGGR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown format %x\0A\00", align 1
@C0_SIF_HVSYNC = common dso_local global i32 0, align 4
@C0_SIFM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_ctlr_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_ctlr_image(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %5 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %6 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %5, i32 0, i32 0
  store %struct.v4l2_pix_format* %6, %struct.v4l2_pix_format** %4, align 8
  %7 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IMGSZ_V_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @IMGSZ_V_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IMGSZ_H_MASK, align 4
  %18 = and i32 %16, %17
  %19 = or i32 %13, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %21 = load i32, i32* @REG_IMGSIZE, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @cafe_reg_write(%struct.cafe_camera* %20, i32 %21, i32 %22)
  %24 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %25 = load i32, i32* @REG_IMGOFFSET, align 4
  %26 = call i32 @cafe_reg_write(%struct.cafe_camera* %24, i32 %25, i32 0)
  %27 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %28 = load i32, i32* @REG_IMGPITCH, align 4
  %29 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IMGP_YP_MASK, align 4
  %33 = call i32 @cafe_reg_write_mask(%struct.cafe_camera* %27, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %35 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %68 [
    i32 128, label %38
    i32 130, label %48
    i32 129, label %58
  ]

38:                                               ; preds = %1
  %39 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %40 = load i32, i32* @REG_CTRL0, align 4
  %41 = load i32, i32* @C0_DF_YUV, align 4
  %42 = load i32, i32* @C0_YUV_PACKED, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @C0_YUVE_YUYV, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @C0_DF_MASK, align 4
  %47 = call i32 @cafe_reg_write_mask(%struct.cafe_camera* %39, i32 %40, i32 %45, i32 %46)
  br label %75

48:                                               ; preds = %1
  %49 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %50 = load i32, i32* @REG_CTRL0, align 4
  %51 = load i32, i32* @C0_DF_RGB, align 4
  %52 = load i32, i32* @C0_RGBF_444, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @C0_RGB4_XRGB, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @C0_DF_MASK, align 4
  %57 = call i32 @cafe_reg_write_mask(%struct.cafe_camera* %49, i32 %50, i32 %55, i32 %56)
  br label %75

58:                                               ; preds = %1
  %59 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %60 = load i32, i32* @REG_CTRL0, align 4
  %61 = load i32, i32* @C0_DF_RGB, align 4
  %62 = load i32, i32* @C0_RGBF_565, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @C0_RGB5_BGGR, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @C0_DF_MASK, align 4
  %67 = call i32 @cafe_reg_write_mask(%struct.cafe_camera* %59, i32 %60, i32 %65, i32 %66)
  br label %75

68:                                               ; preds = %1
  %69 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %70 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %71 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cam_err(%struct.cafe_camera* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %58, %48, %38
  %76 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %77 = load i32, i32* @REG_CTRL0, align 4
  %78 = load i32, i32* @C0_SIF_HVSYNC, align 4
  %79 = load i32, i32* @C0_SIFM_MASK, align 4
  %80 = call i32 @cafe_reg_write_mask(%struct.cafe_camera* %76, i32 %77, i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @cafe_reg_write(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_reg_write_mask(%struct.cafe_camera*, i32, i32, i32) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
