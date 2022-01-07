; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_device_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_bus = type { i32, %struct.acpi_video_enumerated_device* }
%struct.acpi_video_enumerated_device = type { %struct.acpi_video_device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_video_device = type { i32 }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"device_bind %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_video_bus*, %struct.acpi_video_device*)* @acpi_video_device_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_device_bind(%struct.acpi_video_bus* %0, %struct.acpi_video_device* %1) #0 {
  %3 = alloca %struct.acpi_video_bus*, align 8
  %4 = alloca %struct.acpi_video_device*, align 8
  %5 = alloca %struct.acpi_video_enumerated_device*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_video_bus* %0, %struct.acpi_video_bus** %3, align 8
  store %struct.acpi_video_device* %1, %struct.acpi_video_device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %14, i32 0, i32 1
  %16 = load %struct.acpi_video_enumerated_device*, %struct.acpi_video_enumerated_device** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.acpi_video_enumerated_device, %struct.acpi_video_enumerated_device* %16, i64 %18
  store %struct.acpi_video_enumerated_device* %19, %struct.acpi_video_enumerated_device** %5, align 8
  %20 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.acpi_video_enumerated_device*, %struct.acpi_video_enumerated_device** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_video_enumerated_device, %struct.acpi_video_enumerated_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %22, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %13
  %30 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %31 = load %struct.acpi_video_enumerated_device*, %struct.acpi_video_enumerated_device** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_video_enumerated_device, %struct.acpi_video_enumerated_device* %31, i32 0, i32 0
  store %struct.acpi_video_device* %30, %struct.acpi_video_device** %32, align 8
  %33 = load i32, i32* @ACPI_DB_INFO, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ACPI_DEBUG_PRINT(i32 %34)
  br label %36

36:                                               ; preds = %29, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7

40:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
