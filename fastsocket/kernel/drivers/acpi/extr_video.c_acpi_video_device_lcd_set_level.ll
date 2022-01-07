; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_lcd_set_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_lcd_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BCM\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Evaluating _BCM failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Current brightness invalid\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*, i32)* @acpi_video_device_lcd_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_video_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object, align 4
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %union.acpi_object* %7 to %struct.TYPE_6__*
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  store %union.acpi_object* %7, %union.acpi_object** %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = bitcast %union.acpi_object* %7 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @acpi_evaluate_object(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %8, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @AE_INFO, align 4
  %29 = call i32 @ACPI_ERROR(i32 ptrtoint ([23 x i8]* @.str.1 to i32))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %81

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  store i32 2, i32* %9, align 4
  br label %38

38:                                               ; preds = %73, %32
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %49 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %47, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %46
  %59 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 2
  %66 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %67 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %58
  store i32 0, i32* %3, align 4
  br label %81

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %38

76:                                               ; preds = %38
  %77 = load i32, i32* @AE_INFO, align 4
  %78 = call i32 @ACPI_ERROR(i32 ptrtoint ([27 x i8]* @.str.2 to i32))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %71, %27
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
