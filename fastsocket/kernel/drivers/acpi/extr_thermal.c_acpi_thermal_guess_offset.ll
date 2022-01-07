; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_guess_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_guess_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_thermal*)* @acpi_thermal_guess_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_thermal_guess_offset(%struct.acpi_thermal* %0) #0 {
  %2 = alloca %struct.acpi_thermal*, align 8
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %2, align 8
  %3 = load %struct.acpi_thermal*, %struct.acpi_thermal** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.acpi_thermal*, %struct.acpi_thermal** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %15, 5
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.acpi_thermal*, %struct.acpi_thermal** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %19, i32 0, i32 0
  store i32 2731, i32* %20, align 8
  br label %24

21:                                               ; preds = %10, %1
  %22 = load %struct.acpi_thermal*, %struct.acpi_thermal** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %22, i32 0, i32 0
  store i32 2732, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
