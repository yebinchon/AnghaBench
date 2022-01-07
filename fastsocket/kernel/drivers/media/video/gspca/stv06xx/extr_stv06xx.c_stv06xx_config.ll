; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.sd*)* }
%struct.sd = type { %struct.TYPE_6__*, i32, i32 }
%struct.gspca_dev = type { i32*, %struct.cam }
%struct.cam = type { i32 }
%struct.usb_device_id = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Configuring camera\00", align 1
@sd_desc = common dso_local global i32 0, align 4
@dump_bridge = common dso_local global i64 0, align 8
@stv06xx_sensor_st6422 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_vv6410 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_hdcs1x00 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_hdcs1020 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_pb0100 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @stv06xx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv06xx_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load i32, i32* @D_PROBE, align 4
  %11 = call i32 @PDEBUG(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 1
  store %struct.cam* %13, %struct.cam** %7, align 8
  %14 = load i32, i32* @sd_desc, align 4
  %15 = load %struct.sd*, %struct.sd** %6, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sd*, %struct.sd** %6, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sd*, %struct.sd** %6, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load i64, i64* @dump_bridge, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.sd*, %struct.sd** %6, align 8
  %30 = call i32 @stv06xx_dump_bridge(%struct.sd* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.sd*, %struct.sd** %6, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_st6422, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.sd*, %struct.sd** %6, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %37, align 8
  %39 = load %struct.sd*, %struct.sd** %6, align 8
  %40 = call i32 %38(%struct.sd* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %96

43:                                               ; preds = %31
  %44 = load %struct.sd*, %struct.sd** %6, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_vv6410, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.sd*, %struct.sd** %6, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %49, align 8
  %51 = load %struct.sd*, %struct.sd** %6, align 8
  %52 = call i32 %50(%struct.sd* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %96

55:                                               ; preds = %43
  %56 = load %struct.sd*, %struct.sd** %6, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_hdcs1x00, %struct.TYPE_6__** %57, align 8
  %58 = load %struct.sd*, %struct.sd** %6, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %61, align 8
  %63 = load %struct.sd*, %struct.sd** %6, align 8
  %64 = call i32 %62(%struct.sd* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %96

67:                                               ; preds = %55
  %68 = load %struct.sd*, %struct.sd** %6, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_hdcs1020, %struct.TYPE_6__** %69, align 8
  %70 = load %struct.sd*, %struct.sd** %6, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %73, align 8
  %75 = load %struct.sd*, %struct.sd** %6, align 8
  %76 = call i32 %74(%struct.sd* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %96

79:                                               ; preds = %67
  %80 = load %struct.sd*, %struct.sd** %6, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_pb0100, %struct.TYPE_6__** %81, align 8
  %82 = load %struct.sd*, %struct.sd** %6, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %85, align 8
  %87 = load %struct.sd*, %struct.sd** %6, align 8
  %88 = call i32 %86(%struct.sd* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %96

91:                                               ; preds = %79
  %92 = load %struct.sd*, %struct.sd** %6, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %93, align 8
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %90, %78, %66, %54, %42
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @stv06xx_dump_bridge(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
