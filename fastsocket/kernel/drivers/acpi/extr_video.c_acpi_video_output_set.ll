; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_output_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_output_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_device = type { i64, i32 }
%struct.acpi_video_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.output_device*)* @acpi_video_output_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_output_set(%struct.output_device* %0) #0 {
  %2 = alloca %struct.output_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_video_device*, align 8
  store %struct.output_device* %0, %struct.output_device** %2, align 8
  %5 = load %struct.output_device*, %struct.output_device** %2, align 8
  %6 = getelementptr inbounds %struct.output_device, %struct.output_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.output_device*, %struct.output_device** %2, align 8
  %9 = getelementptr inbounds %struct.output_device, %struct.output_device* %8, i32 0, i32 1
  %10 = call i64 @dev_get_drvdata(i32* %9)
  %11 = inttoptr i64 %10 to %struct.acpi_video_device*
  store %struct.acpi_video_device* %11, %struct.acpi_video_device** %4, align 8
  %12 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @acpi_video_device_set_state(%struct.acpi_video_device* %12, i64 %13)
  ret i32 %14
}

declare dso_local i64 @dev_get_drvdata(i32*) #1

declare dso_local i32 @acpi_video_device_set_state(%struct.acpi_video_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
