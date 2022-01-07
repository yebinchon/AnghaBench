; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32, i32, i8*, i8*, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@BRIDGE_MASK = common dso_local global i32 0, align 4
@BRIDGE_INVERT_LED = common dso_local global i32 0, align 4
@ov511_vga_mode = common dso_local global i8* null, align 8
@ov518_vga_mode = common dso_local global i8* null, align 8
@ov519_vga_mode = common dso_local global i8* null, align 8
@OVFX2_BULK_SIZE = common dso_local global i32 0, align 4
@MAX_NURBS = common dso_local global i32 0, align 4
@w9968cf_vga_mode = common dso_local global i8* null, align 8
@QUALITY_DEF = common dso_local global i32 0, align 4
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
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  store %struct.cam* %10, %struct.cam** %6, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BRIDGE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %19 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BRIDGE_INVERT_LED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.sd*, %struct.sd** %5, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sd*, %struct.sd** %5, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %88 [
    i32 134, label %30
    i32 133, label %30
    i32 132, label %38
    i32 131, label %38
    i32 130, label %46
    i32 129, label %62
    i32 128, label %78
  ]

30:                                               ; preds = %2, %2
  %31 = load i8*, i8** @ov511_vga_mode, align 8
  %32 = load %struct.cam*, %struct.cam** %6, align 8
  %33 = getelementptr inbounds %struct.cam, %struct.cam* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @ov511_vga_mode, align 8
  %35 = call i8* @ARRAY_SIZE(i8* %34)
  %36 = load %struct.cam*, %struct.cam** %6, align 8
  %37 = getelementptr inbounds %struct.cam, %struct.cam* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  br label %88

38:                                               ; preds = %2, %2
  %39 = load i8*, i8** @ov518_vga_mode, align 8
  %40 = load %struct.cam*, %struct.cam** %6, align 8
  %41 = getelementptr inbounds %struct.cam, %struct.cam* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @ov518_vga_mode, align 8
  %43 = call i8* @ARRAY_SIZE(i8* %42)
  %44 = load %struct.cam*, %struct.cam** %6, align 8
  %45 = getelementptr inbounds %struct.cam, %struct.cam* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %88

46:                                               ; preds = %2
  %47 = load i8*, i8** @ov519_vga_mode, align 8
  %48 = load %struct.cam*, %struct.cam** %6, align 8
  %49 = getelementptr inbounds %struct.cam, %struct.cam* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @ov519_vga_mode, align 8
  %51 = call i8* @ARRAY_SIZE(i8* %50)
  %52 = load %struct.cam*, %struct.cam** %6, align 8
  %53 = getelementptr inbounds %struct.cam, %struct.cam* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sd*, %struct.sd** %5, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.sd*, %struct.sd** %5, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %88

62:                                               ; preds = %2
  %63 = load i8*, i8** @ov519_vga_mode, align 8
  %64 = load %struct.cam*, %struct.cam** %6, align 8
  %65 = getelementptr inbounds %struct.cam, %struct.cam* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @ov519_vga_mode, align 8
  %67 = call i8* @ARRAY_SIZE(i8* %66)
  %68 = load %struct.cam*, %struct.cam** %6, align 8
  %69 = getelementptr inbounds %struct.cam, %struct.cam* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @OVFX2_BULK_SIZE, align 4
  %71 = load %struct.cam*, %struct.cam** %6, align 8
  %72 = getelementptr inbounds %struct.cam, %struct.cam* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @MAX_NURBS, align 4
  %74 = load %struct.cam*, %struct.cam** %6, align 8
  %75 = getelementptr inbounds %struct.cam, %struct.cam* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cam*, %struct.cam** %6, align 8
  %77 = getelementptr inbounds %struct.cam, %struct.cam* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %88

78:                                               ; preds = %2
  %79 = load i8*, i8** @w9968cf_vga_mode, align 8
  %80 = load %struct.cam*, %struct.cam** %6, align 8
  %81 = getelementptr inbounds %struct.cam, %struct.cam* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @w9968cf_vga_mode, align 8
  %83 = call i8* @ARRAY_SIZE(i8* %82)
  %84 = load %struct.cam*, %struct.cam** %6, align 8
  %85 = getelementptr inbounds %struct.cam, %struct.cam* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.cam*, %struct.cam** %6, align 8
  %87 = getelementptr inbounds %struct.cam, %struct.cam* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %2, %78, %62, %46, %38, %30
  %89 = load %struct.sd*, %struct.sd** %5, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.cam, %struct.cam* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @QUALITY_DEF, align 4
  %96 = load %struct.sd*, %struct.sd** %5, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  ret i32 0
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
