; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i8*, i8* }
%struct.usb_device_id = type { i32, i32 }
%struct.sd = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SN9C2028 camera detected (vid/pid 0x%04X:0x%04X)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Genius Smart 300 camera\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DC31VC\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Spy camera\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"CIF camera\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Mini-Shotz ms-350 camera\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Vivitar 3350b type camera\00", align 1
@V4L2_IN_ST_VFLIP = common dso_local global i32 0, align 4
@V4L2_IN_ST_HFLIP = common dso_local global i32 0, align 4
@cif_mode = common dso_local global i8* null, align 8
@vga_mode = common dso_local global i8* null, align 8
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
  %11 = load i32, i32* @D_PROBE, align 4
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @PDEBUG(i32 %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sd*, %struct.sd** %5, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %50 [
    i32 28677, label %27
    i32 32768, label %30
    i32 32769, label %33
    i32 32771, label %36
    i32 32776, label %39
    i32 32778, label %42
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @D_PROBE, align 4
  %29 = call i32 (i32, i8*, ...) @PDEBUG(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %50

30:                                               ; preds = %2
  %31 = load i32, i32* @D_PROBE, align 4
  %32 = call i32 (i32, i8*, ...) @PDEBUG(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %50

33:                                               ; preds = %2
  %34 = load i32, i32* @D_PROBE, align 4
  %35 = call i32 (i32, i8*, ...) @PDEBUG(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %50

36:                                               ; preds = %2
  %37 = load i32, i32* @D_PROBE, align 4
  %38 = call i32 (i32, i8*, ...) @PDEBUG(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %50

39:                                               ; preds = %2
  %40 = load i32, i32* @D_PROBE, align 4
  %41 = call i32 (i32, i8*, ...) @PDEBUG(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %50

42:                                               ; preds = %2
  %43 = load i32, i32* @D_PROBE, align 4
  %44 = call i32 (i32, i8*, ...) @PDEBUG(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32, i32* @V4L2_IN_ST_VFLIP, align 4
  %46 = load i32, i32* @V4L2_IN_ST_HFLIP, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.cam*, %struct.cam** %6, align 8
  %49 = getelementptr inbounds %struct.cam, %struct.cam* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %2, %42, %39, %36, %33, %30, %27
  %51 = load %struct.sd*, %struct.sd** %5, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %62 [
    i32 32768, label %54
    i32 32769, label %54
    i32 32771, label %54
  ]

54:                                               ; preds = %50, %50, %50
  %55 = load i8*, i8** @cif_mode, align 8
  %56 = load %struct.cam*, %struct.cam** %6, align 8
  %57 = getelementptr inbounds %struct.cam, %struct.cam* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @cif_mode, align 8
  %59 = call i8* @ARRAY_SIZE(i8* %58)
  %60 = load %struct.cam*, %struct.cam** %6, align 8
  %61 = getelementptr inbounds %struct.cam, %struct.cam* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %70

62:                                               ; preds = %50
  %63 = load i8*, i8** @vga_mode, align 8
  %64 = load %struct.cam*, %struct.cam** %6, align 8
  %65 = getelementptr inbounds %struct.cam, %struct.cam* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @vga_mode, align 8
  %67 = call i8* @ARRAY_SIZE(i8* %66)
  %68 = load %struct.cam*, %struct.cam** %6, align 8
  %69 = getelementptr inbounds %struct.cam, %struct.cam* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %62, %54
  ret i32 0
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
