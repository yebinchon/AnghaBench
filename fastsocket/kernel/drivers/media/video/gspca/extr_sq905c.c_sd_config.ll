; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq905c.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq905c.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64*, %struct.cam }
%struct.cam = type { i32, i32, i32, i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.sd = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SQ9050 camera detected (vid/pid 0x%04X:0x%04X)\00", align 1
@SQ905C_GET_ID = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Get version command failed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Reading version command failed\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"SQ9050 ID string: %02x - %02x %02x %02x %02x %02x %02x\00", align 1
@sq905c_mode = common dso_local global i32 0, align 4
@sq905c_dostream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.cam*, align 8
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 1
  store %struct.cam* %10, %struct.cam** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %7, align 8
  %13 = load i32, i32* @D_PROBE, align 4
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @PDEBUG(i32 %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = load i32, i32* @SQ905C_GET_ID, align 4
  %23 = call i32 @sq905c_command(%struct.gspca_dev* %21, i32 %22, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @D_ERR, align 4
  %28 = call i32 (i32, i8*, ...) @PDEBUG(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %100

30:                                               ; preds = %2
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = call i32 @sq905c_read(%struct.gspca_dev* %31, i32 245, i32 0, i32 20)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @D_ERR, align 4
  %37 = call i32 (i32, i8*, ...) @PDEBUG(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %100

39:                                               ; preds = %30
  %40 = load i32, i32* @D_PROBE, align 4
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 14
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 15
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 16
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 17
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 18
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 19
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, ...) @PDEBUG(i32 %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %45, i64 %50, i64 %55, i64 %60, i64 %65, i64 %70, i64 %75)
  %77 = load i32, i32* @sq905c_mode, align 4
  %78 = load %struct.cam*, %struct.cam** %6, align 8
  %79 = getelementptr inbounds %struct.cam, %struct.cam* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cam*, %struct.cam** %6, align 8
  %81 = getelementptr inbounds %struct.cam, %struct.cam* %80, i32 0, i32 0
  store i32 2, i32* %81, align 4
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %83 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 15
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %39
  %89 = load %struct.cam*, %struct.cam** %6, align 8
  %90 = getelementptr inbounds %struct.cam, %struct.cam* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %39
  %92 = load %struct.cam*, %struct.cam** %6, align 8
  %93 = getelementptr inbounds %struct.cam, %struct.cam* %92, i32 0, i32 1
  store i32 32, i32* %93, align 4
  %94 = load %struct.cam*, %struct.cam** %6, align 8
  %95 = getelementptr inbounds %struct.cam, %struct.cam* %94, i32 0, i32 2
  store i32 1, i32* %95, align 4
  %96 = load %struct.sd*, %struct.sd** %7, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 0
  %98 = load i32, i32* @sq905c_dostream, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %35, %26
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @sq905c_command(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sq905c_read(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
