; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_brightness_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_brightness_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.acpi_video_device* }
%struct.acpi_video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"<not supported>\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"levels: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0Acurrent: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @acpi_video_device_brightness_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_brightness_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_video_device*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  store %struct.acpi_video_device* %10, %struct.acpi_video_device** %6, align 8
  %11 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %12 = icmp ne %struct.acpi_video_device* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %15 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

21:                                               ; preds = %13
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %7, align 4
  br label %24

24:                                               ; preds = %44, %21
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %27 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %35 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.acpi_video_device*, %struct.acpi_video_device** %6, align 8
  %50 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %47, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
