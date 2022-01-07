; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.cam }
%struct.cam = type { i32, i32, i32, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ibm_netcam_pro = common dso_local global i64 0, align 8
@model0_mode = common dso_local global i8* null, align 8
@SD_CONTRAST = common dso_local global i32 0, align 4
@SD_HFLIP = common dso_local global i32 0, align 4
@cif_yuv_mode = common dso_local global i8* null, align 8
@SD_HUE = common dso_local global i32 0, align 4
@model2_mode = common dso_local global i8* null, align 8
@SD_SHARPNESS = common dso_local global i32 0, align 4
@vga_yuv_mode = common dso_local global i8* null, align 8
@SD_LIGHTING = common dso_local global i32 0, align 4
@V4L2_IN_ST_VFLIP = common dso_local global i32 0, align 4
@BRIGHTNESS_DEFAULT = common dso_local global i32 0, align 4
@CONTRAST_DEFAULT = common dso_local global i32 0, align 4
@HUE_DEFAULT = common dso_local global i32 0, align 4
@SHARPNESS_DEFAULT = common dso_local global i32 0, align 4
@LIGHTING_DEFAULT = common dso_local global i32 0, align 4
@HFLIP_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sd*, %struct.sd** %5, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i64, i64* @ibm_netcam_pro, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  store i32 133, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18, %2
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 1
  store %struct.cam* %26, %struct.cam** %6, align 8
  %27 = load %struct.sd*, %struct.sd** %5, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %151 [
    i32 132, label %30
    i32 131, label %51
    i32 130, label %71
    i32 129, label %88
    i32 128, label %111
    i32 133, label %133
  ]

30:                                               ; preds = %24
  %31 = load i8*, i8** @model0_mode, align 8
  %32 = load %struct.cam*, %struct.cam** %6, align 8
  %33 = getelementptr inbounds %struct.cam, %struct.cam* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @model0_mode, align 8
  %35 = call i8* @ARRAY_SIZE(i8* %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.cam*, %struct.cam** %6, align 8
  %38 = getelementptr inbounds %struct.cam, %struct.cam* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cam*, %struct.cam** %6, align 8
  %40 = getelementptr inbounds %struct.cam, %struct.cam* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @SD_CONTRAST, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @SD_HFLIP, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sd*, %struct.sd** %5, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 1
  store i32 4, i32* %50, align 4
  br label %151

51:                                               ; preds = %24
  %52 = load i8*, i8** @cif_yuv_mode, align 8
  %53 = load %struct.cam*, %struct.cam** %6, align 8
  %54 = getelementptr inbounds %struct.cam, %struct.cam* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @cif_yuv_mode, align 8
  %56 = call i8* @ARRAY_SIZE(i8* %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.cam*, %struct.cam** %6, align 8
  %59 = getelementptr inbounds %struct.cam, %struct.cam* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cam*, %struct.cam** %6, align 8
  %61 = getelementptr inbounds %struct.cam, %struct.cam* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @SD_HUE, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* @SD_HFLIP, align 4
  %65 = shl i32 1, %64
  %66 = or i32 %63, %65
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sd*, %struct.sd** %5, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 1
  store i32 4, i32* %70, align 4
  br label %151

71:                                               ; preds = %24
  %72 = load i8*, i8** @model2_mode, align 8
  %73 = getelementptr i8, i8* %72, i64 1
  %74 = load %struct.cam*, %struct.cam** %6, align 8
  %75 = getelementptr inbounds %struct.cam, %struct.cam* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cam*, %struct.cam** %6, align 8
  %77 = getelementptr inbounds %struct.cam, %struct.cam* %76, i32 0, i32 0
  store i32 3, i32* %77, align 8
  %78 = load i32, i32* @SD_CONTRAST, align 4
  %79 = shl i32 1, %78
  %80 = load i32, i32* @SD_SHARPNESS, align 4
  %81 = shl i32 1, %80
  %82 = or i32 %79, %81
  %83 = load i32, i32* @SD_HFLIP, align 4
  %84 = shl i32 1, %83
  %85 = or i32 %82, %84
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %87 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %151

88:                                               ; preds = %24
  %89 = load i8*, i8** @vga_yuv_mode, align 8
  %90 = load %struct.cam*, %struct.cam** %6, align 8
  %91 = getelementptr inbounds %struct.cam, %struct.cam* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @vga_yuv_mode, align 8
  %93 = call i8* @ARRAY_SIZE(i8* %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.cam*, %struct.cam** %6, align 8
  %96 = getelementptr inbounds %struct.cam, %struct.cam* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @SD_HUE, align 4
  %98 = shl i32 1, %97
  %99 = load i32, i32* @SD_LIGHTING, align 4
  %100 = shl i32 1, %99
  %101 = or i32 %98, %100
  %102 = load i32, i32* @SD_HFLIP, align 4
  %103 = shl i32 1, %102
  %104 = or i32 %101, %103
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %106 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sd*, %struct.sd** %5, align 8
  %108 = getelementptr inbounds %struct.sd, %struct.sd* %107, i32 0, i32 2
  store i32 1, i32* %108, align 4
  %109 = load %struct.sd*, %struct.sd** %5, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 1
  store i32 4, i32* %110, align 4
  br label %151

111:                                              ; preds = %24
  %112 = load i8*, i8** @model2_mode, align 8
  %113 = load %struct.cam*, %struct.cam** %6, align 8
  %114 = getelementptr inbounds %struct.cam, %struct.cam* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @model2_mode, align 8
  %116 = call i8* @ARRAY_SIZE(i8* %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.cam*, %struct.cam** %6, align 8
  %119 = getelementptr inbounds %struct.cam, %struct.cam* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @SD_CONTRAST, align 4
  %121 = shl i32 1, %120
  %122 = load i32, i32* @SD_SHARPNESS, align 4
  %123 = shl i32 1, %122
  %124 = or i32 %121, %123
  %125 = load i32, i32* @SD_LIGHTING, align 4
  %126 = shl i32 1, %125
  %127 = or i32 %124, %126
  %128 = load i32, i32* @SD_HFLIP, align 4
  %129 = shl i32 1, %128
  %130 = or i32 %127, %129
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %132 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %151

133:                                              ; preds = %24
  %134 = load i8*, i8** @vga_yuv_mode, align 8
  %135 = load %struct.cam*, %struct.cam** %6, align 8
  %136 = getelementptr inbounds %struct.cam, %struct.cam* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load %struct.cam*, %struct.cam** %6, align 8
  %138 = getelementptr inbounds %struct.cam, %struct.cam* %137, i32 0, i32 0
  store i32 2, i32* %138, align 8
  %139 = load i32, i32* @V4L2_IN_ST_VFLIP, align 4
  %140 = load %struct.cam*, %struct.cam** %6, align 8
  %141 = getelementptr inbounds %struct.cam, %struct.cam* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @SD_CONTRAST, align 4
  %143 = shl i32 1, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %146 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.sd*, %struct.sd** %5, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 2
  store i32 1, i32* %148, align 4
  %149 = load %struct.sd*, %struct.sd** %5, align 8
  %150 = getelementptr inbounds %struct.sd, %struct.sd* %149, i32 0, i32 1
  store i32 4, i32* %150, align 4
  br label %151

151:                                              ; preds = %24, %133, %111, %88, %71, %51, %30
  %152 = load i32, i32* @BRIGHTNESS_DEFAULT, align 4
  %153 = load %struct.sd*, %struct.sd** %5, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @CONTRAST_DEFAULT, align 4
  %156 = load %struct.sd*, %struct.sd** %5, align 8
  %157 = getelementptr inbounds %struct.sd, %struct.sd* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @HUE_DEFAULT, align 4
  %159 = load %struct.sd*, %struct.sd** %5, align 8
  %160 = getelementptr inbounds %struct.sd, %struct.sd* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @SHARPNESS_DEFAULT, align 4
  %162 = load %struct.sd*, %struct.sd** %5, align 8
  %163 = getelementptr inbounds %struct.sd, %struct.sd* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @LIGHTING_DEFAULT, align 4
  %165 = load %struct.sd*, %struct.sd** %5, align 8
  %166 = getelementptr inbounds %struct.sd, %struct.sd* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @HFLIP_DEFAULT, align 4
  %168 = load %struct.sd*, %struct.sd** %5, align 8
  %169 = getelementptr inbounds %struct.sd, %struct.sd* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  ret i32 0
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
