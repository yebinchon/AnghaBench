; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.acpi_video_bus*, %struct.acpi_device* }
%struct.acpi_video_bus = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.acpi_device = type { i32 }

@brightness_switch_enabled = common dso_local global i32 0, align 4
@KEY_BRIGHTNESS_CYCLE = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESS_ZERO = common dso_local global i32 0, align 4
@KEY_DISPLAY_OFF = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @acpi_video_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_device_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_video_device*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %struct.acpi_video_bus*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.acpi_video_device*
  store %struct.acpi_video_device* %13, %struct.acpi_video_device** %7, align 8
  store %struct.acpi_device* null, %struct.acpi_device** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %15 = icmp ne %struct.acpi_video_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %110

17:                                               ; preds = %3
  %18 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %19 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %18, i32 0, i32 1
  %20 = load %struct.acpi_device*, %struct.acpi_device** %19, align 8
  store %struct.acpi_device* %20, %struct.acpi_device** %8, align 8
  %21 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %22 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %21, i32 0, i32 0
  %23 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %22, align 8
  store %struct.acpi_video_bus* %23, %struct.acpi_video_bus** %9, align 8
  %24 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %9, align 8
  %25 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %24, i32 0, i32 0
  %26 = load %struct.input_dev*, %struct.input_dev** %25, align 8
  store %struct.input_dev* %26, %struct.input_dev** %10, align 8
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %88 [
    i32 132, label %28
    i32 129, label %40
    i32 131, label %52
    i32 128, label %64
    i32 130, label %76
  ]

28:                                               ; preds = %17
  %29 = load i32, i32* @brightness_switch_enabled, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @acpi_video_switch_brightness(%struct.acpi_video_device* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %36, i32 %37, i32 0)
  %39 = load i32, i32* @KEY_BRIGHTNESS_CYCLE, align 4
  store i32 %39, i32* %11, align 4
  br label %92

40:                                               ; preds = %17
  %41 = load i32, i32* @brightness_switch_enabled, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @acpi_video_switch_brightness(%struct.acpi_video_device* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %48, i32 %49, i32 0)
  %51 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  store i32 %51, i32* %11, align 4
  br label %92

52:                                               ; preds = %17
  %53 = load i32, i32* @brightness_switch_enabled, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @acpi_video_switch_brightness(%struct.acpi_video_device* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %60, i32 %61, i32 0)
  %63 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  store i32 %63, i32* %11, align 4
  br label %92

64:                                               ; preds = %17
  %65 = load i32, i32* @brightness_switch_enabled, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @acpi_video_switch_brightness(%struct.acpi_video_device* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %72, i32 %73, i32 0)
  %75 = load i32, i32* @KEY_BRIGHTNESS_ZERO, align 4
  store i32 %75, i32* %11, align 4
  br label %92

76:                                               ; preds = %17
  %77 = load i32, i32* @brightness_switch_enabled, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @acpi_video_switch_brightness(%struct.acpi_video_device* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %84, i32 %85, i32 0)
  %87 = load i32, i32* @KEY_DISPLAY_OFF, align 4
  store i32 %87, i32* %11, align 4
  br label %92

88:                                               ; preds = %17
  %89 = load i32, i32* @ACPI_DB_INFO, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ACPI_DEBUG_PRINT(i32 %90)
  br label %92

92:                                               ; preds = %88, %83, %71, %59, %47, %35
  %93 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @acpi_notifier_call_chain(%struct.acpi_device* %93, i32 %94, i32 0)
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @input_report_key(%struct.input_dev* %99, i32 %100, i32 1)
  %102 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %103 = call i32 @input_sync(%struct.input_dev* %102)
  %104 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @input_report_key(%struct.input_dev* %104, i32 %105, i32 0)
  %107 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %108 = call i32 @input_sync(%struct.input_dev* %107)
  br label %109

109:                                              ; preds = %98, %92
  br label %110

110:                                              ; preds = %109, %16
  ret void
}

declare dso_local i32 @acpi_video_switch_brightness(%struct.acpi_video_device*, i32) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_notifier_call_chain(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
