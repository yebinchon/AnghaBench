; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_EDID_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_EDID_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.acpi_video_device* }
%struct.acpi_video_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"<not supported>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @acpi_video_device_EDID_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_EDID_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_video_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_object*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.acpi_video_device*, %struct.acpi_video_device** %10, align 8
  store %struct.acpi_video_device* %11, %struct.acpi_video_device** %5, align 8
  store %union.acpi_object* null, %union.acpi_object** %8, align 8
  %12 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %13 = icmp ne %struct.acpi_video_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %17 = call i32 @acpi_video_device_EDID(%struct.acpi_video_device* %16, %union.acpi_object** %8, i32 128)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %23 = call i32 @acpi_video_device_EDID(%struct.acpi_video_device* %22, %union.acpi_object** %8, i32 256)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %62

29:                                               ; preds = %24
  %30 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %31 = icmp ne %union.acpi_object* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %34 = bitcast %union.acpi_object* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @seq_putc(%struct.seq_file* %47, i32 %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %32, %29
  br label %62

62:                                               ; preds = %61, %28, %14
  %63 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %64 = icmp ne %union.acpi_object* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %71

68:                                               ; preds = %62
  %69 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %70 = call i32 @kfree(%union.acpi_object* %69)
  br label %71

71:                                               ; preds = %68, %65
  ret i32 0
}

declare dso_local i32 @acpi_video_device_EDID(%struct.acpi_video_device*, %union.acpi_object**, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
