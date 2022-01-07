; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_video_bus = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@KEY_SWITCHVIDEOMODE = common dso_local global i32 0, align 4
@KEY_VIDEO_NEXT = common dso_local global i32 0, align 4
@KEY_VIDEO_PREV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_video_bus_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_bus_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_video_bus*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %8)
  store %struct.acpi_video_bus* %9, %struct.acpi_video_bus** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %11 = icmp ne %struct.acpi_video_bus* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %79

13:                                               ; preds = %2
  %14 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %14, i32 0, i32 0
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %6, align 8
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %53 [
    i32 128, label %18
    i32 129, label %29
    i32 132, label %38
    i32 131, label %43
    i32 130, label %48
  ]

18:                                               ; preds = %13
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %19, i32 %20, i32 0)
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @acpi_notifier_call_chain(%struct.acpi_device* %22, i32 %23, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %18
  br label %57

29:                                               ; preds = %13
  %30 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %31 = call i32 @acpi_video_device_enumerate(%struct.acpi_video_bus* %30)
  %32 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %33 = call i32 @acpi_video_device_rebind(%struct.acpi_video_bus* %32)
  %34 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %34, i32 %35, i32 0)
  %37 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  store i32 %37, i32* %7, align 4
  br label %57

38:                                               ; preds = %13
  %39 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %39, i32 %40, i32 0)
  %42 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  store i32 %42, i32* %7, align 4
  br label %57

43:                                               ; preds = %13
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %44, i32 %45, i32 0)
  %47 = load i32, i32* @KEY_VIDEO_NEXT, align 4
  store i32 %47, i32* %7, align 4
  br label %57

48:                                               ; preds = %13
  %49 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %49, i32 %50, i32 0)
  %52 = load i32, i32* @KEY_VIDEO_PREV, align 4
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %13
  %54 = load i32, i32* @ACPI_DB_INFO, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ACPI_DEBUG_PRINT(i32 %55)
  br label %57

57:                                               ; preds = %53, %48, %43, %38, %29, %28
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 128
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @acpi_notifier_call_chain(%struct.acpi_device* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @input_report_key(%struct.input_dev* %68, i32 %69, i32 1)
  %71 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %72 = call i32 @input_sync(%struct.input_dev* %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @input_report_key(%struct.input_dev* %73, i32 %74, i32 0)
  %76 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %77 = call i32 @input_sync(%struct.input_dev* %76)
  br label %78

78:                                               ; preds = %67, %64
  br label %79

79:                                               ; preds = %78, %12
  ret void
}

declare dso_local %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @acpi_notifier_call_chain(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @acpi_video_device_enumerate(%struct.acpi_video_bus*) #1

declare dso_local i32 @acpi_video_device_rebind(%struct.acpi_video_bus*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
