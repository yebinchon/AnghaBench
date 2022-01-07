; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_acpi_video_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video_detect.c_acpi_video_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@acpi_video_caps_checked = common dso_local global i32 0, align 4
@acpi_video_support = common dso_local global i64 0, align 8
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32* null, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@find_video = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid device\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"We have 0x%lX video support %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"on device \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"in general\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_video_get_capabilities(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @acpi_video_caps_checked, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i64, i64* @acpi_video_support, align 8
  store i64 %13, i64* %2, align 8
  br label %67

14:                                               ; preds = %9, %1
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %19 = load i32*, i32** @ACPI_ROOT_OBJECT, align 8
  %20 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %21 = load i32, i32* @find_video, align 4
  %22 = call i32 @acpi_walk_namespace(i32 %18, i32* %19, i32 %20, i32 %21, i64* %4, i32* null)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @acpi_video_support, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* @acpi_video_support, align 8
  store i32 1, i32* @acpi_video_caps_checked, align 4
  br label %42

26:                                               ; preds = %14
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @acpi_bus_get_device(i32* %27, %struct.acpi_device** %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @AE_INFO, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([15 x i8]* @.str to i32))
  store i64 0, i64* %2, align 8
  br label %67

36:                                               ; preds = %26
  %37 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %40 = load i32, i32* @find_video, align 4
  %41 = call i32 @acpi_walk_namespace(i32 %37, i32* %38, i32 %39, i32 %40, i64* %4, i32* null)
  br label %42

42:                                               ; preds = %36, %17
  %43 = load i32, i32* @ACPI_DB_INFO, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i64, i64* @acpi_video_support, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32*, i32** %3, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %56 = load i32*, i32** %3, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %60 = call i8* @acpi_device_bid(%struct.acpi_device* %59)
  br label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i8* [ %60, %58 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %61 ]
  %64 = ptrtoint i8* %63 to i32
  %65 = call i32 @ACPI_DEBUG_PRINT(i32 %64)
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %62, %32, %12
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i32 @acpi_walk_namespace(i32, i32*, i32, i32, i64*, i32*) #1

declare dso_local i32 @acpi_bus_get_device(i32*, %struct.acpi_device**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i8* @acpi_device_bid(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
