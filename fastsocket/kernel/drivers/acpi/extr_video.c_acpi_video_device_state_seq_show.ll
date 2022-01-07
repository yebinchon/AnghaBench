; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_state_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_state_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.acpi_video_device* }
%struct.acpi_video_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"state:     \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"0x%02llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<not supported>\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"query:     \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @acpi_video_device_state_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_state_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_video_device*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  store %struct.acpi_video_device* %10, %struct.acpi_video_device** %6, align 8
  %11 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %12 = icmp ne %struct.acpi_video_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %16 = call i32 @acpi_video_device_get_state(%struct.acpi_video_device* %15, i64* %7)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @ACPI_SUCCESS(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  br label %29

26:                                               ; preds = %14
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %31 = call i32 @acpi_video_device_query(%struct.acpi_video_device* %30, i64* %7)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @ACPI_SUCCESS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %13
  ret i32 0
}

declare dso_local i32 @acpi_video_device_get_state(%struct.acpi_video_device*, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_video_device_query(%struct.acpi_video_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
