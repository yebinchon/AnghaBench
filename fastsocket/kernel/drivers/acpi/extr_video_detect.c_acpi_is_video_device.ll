; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_acpi_is_video_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_acpi_is_video_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_DOD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_DOS\00", align 1
@ACPI_VIDEO_OUTPUT_SWITCHING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"_ROM\00", align 1
@ACPI_VIDEO_ROM_AVAILABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"_VPO\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_GPD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_SPD\00", align 1
@ACPI_VIDEO_DEVICE_POSTING = common dso_local global i64 0, align 8
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@acpi_backlight_cap_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_is_video_device(%struct.acpi_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %76

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @acpi_get_handle(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4)
  %14 = call i64 @ACPI_SUCCESS(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @acpi_get_handle(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %21 = call i64 @ACPI_SUCCESS(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16, %9
  %24 = load i64, i64* @ACPI_VIDEO_OUTPUT_SWITCHING, align 8
  %25 = load i64, i64* %5, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @acpi_get_handle(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %32 = call i64 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* @ACPI_VIDEO_ROM_AVAILABLE, align 8
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @acpi_get_handle(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %43 = call i64 @ACPI_SUCCESS(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @acpi_get_handle(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %4)
  %50 = call i64 @ACPI_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @acpi_get_handle(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %4)
  %57 = call i64 @ACPI_SUCCESS(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i64, i64* @ACPI_VIDEO_DEVICE_POSTING, align 8
  %61 = load i64, i64* %5, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %59, %52, %45, %38
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %68 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %72 = load i32, i32* @acpi_backlight_cap_match, align 4
  %73 = call i32 @acpi_walk_namespace(i32 %67, i32 %70, i32 %71, i32 %72, i64* %5, i32* null)
  br label %74

74:                                               ; preds = %66, %63
  %75 = load i64, i64* %5, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %74, %8
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
