; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_info_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_info_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.acpi_video_device* }
%struct.acpi_video_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"device_id:    0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"type:         \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CRT\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"LCD\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TVOUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DVI\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"known by bios: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @acpi_video_device_info_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_info_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_video_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  store %struct.acpi_video_device* %8, %struct.acpi_video_device** %5, align 8
  %9 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %10 = icmp ne %struct.acpi_video_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %72

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %62

29:                                               ; preds = %12
  %30 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %61

38:                                               ; preds = %29
  %39 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %40 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %60

47:                                               ; preds = %38
  %48 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %49 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %26
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %62, %11
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
