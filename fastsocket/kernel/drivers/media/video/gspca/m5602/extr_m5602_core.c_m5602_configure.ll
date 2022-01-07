; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_core.c_m5602_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_core.c_m5602_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i64, i32* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32* }

@sd_desc = common dso_local global i32 0, align 4
@dump_bridge = common dso_local global i64 0, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ALi m5602 webcam failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @m5602_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5602_configure(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  store %struct.cam* %12, %struct.cam** %7, align 8
  %13 = load %struct.sd*, %struct.sd** %6, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  store i32* @sd_desc, i32** %14, align 8
  %15 = load i64, i64* @dump_bridge, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.sd*, %struct.sd** %6, align 8
  %19 = call i32 @m5602_dump_bridge(%struct.sd* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.sd*, %struct.sd** %6, align 8
  %22 = call i32 @m5602_probe_sensor(%struct.sd* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %25
  %28 = load i32, i32* @D_ERR, align 4
  %29 = call i32 @PDEBUG(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.cam*, %struct.cam** %7, align 8
  %31 = getelementptr inbounds %struct.cam, %struct.cam* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.cam*, %struct.cam** %7, align 8
  %33 = getelementptr inbounds %struct.cam, %struct.cam* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @m5602_dump_bridge(%struct.sd*) #1

declare dso_local i32 @m5602_probe_sensor(%struct.sd*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
