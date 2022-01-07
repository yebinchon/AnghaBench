; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_put_one_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_put_one_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.acpi_video_bus* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.acpi_video_bus = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_video_device_notify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*)* @acpi_video_bus_put_one_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_bus_put_one_device(%struct.acpi_video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_video_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_video_bus*, align 8
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %3, align 8
  %6 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %7 = icmp ne %struct.acpi_video_device* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %9, i32 0, i32 4
  %11 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %10, align 8
  %12 = icmp ne %struct.acpi_video_bus* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %8
  %17 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %17, i32 0, i32 4
  %19 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %18, align 8
  store %struct.acpi_video_bus* %19, %struct.acpi_video_bus** %5, align 8
  %20 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call i32 @acpi_video_device_remove_fs(%struct.TYPE_12__* %22)
  %24 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %30 = load i32, i32* @acpi_video_device_notify, align 4
  %31 = call i32 @acpi_remove_notify_handler(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %16
  %37 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @sysfs_remove_link(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = call i32 @backlight_device_unregister(%struct.TYPE_11__* %45)
  %47 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %47, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %48, align 8
  br label %49

49:                                               ; preds = %36, %16
  %50 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @sysfs_remove_link(i32* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_remove_link(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = call i32 @thermal_cooling_device_unregister(%struct.TYPE_10__* %69)
  %71 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %72 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %71, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %72, align 8
  br label %73

73:                                               ; preds = %54, %49
  %74 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @video_output_unregister(i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @acpi_video_device_remove_fs(%struct.TYPE_12__*) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @backlight_device_unregister(%struct.TYPE_11__*) #1

declare dso_local i32 @thermal_cooling_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @video_output_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
