; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_bus.c_mmc_bus_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_bus.c_mmc_bus_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.mmc_driver = type { i32 (%struct.mmc_card*)* }
%struct.mmc_card = type opaque
%struct.mmc_card.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mmc_bus_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_bus_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mmc_driver*, align 8
  %4 = alloca %struct.mmc_card.0*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call %struct.mmc_driver* @to_mmc_driver(i64 %8)
  store %struct.mmc_driver* %9, %struct.mmc_driver** %3, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.mmc_card.0* @dev_to_mmc_card(%struct.device* %10)
  store %struct.mmc_card.0* %11, %struct.mmc_card.0** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.mmc_driver*, %struct.mmc_driver** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.mmc_card*)*, i32 (%struct.mmc_card*)** %18, align 8
  %20 = icmp ne i32 (%struct.mmc_card*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.mmc_driver*, %struct.mmc_driver** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_driver, %struct.mmc_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.mmc_card*)*, i32 (%struct.mmc_card*)** %23, align 8
  %25 = load %struct.mmc_card.0*, %struct.mmc_card.0** %4, align 8
  %26 = bitcast %struct.mmc_card.0* %25 to %struct.mmc_card*
  %27 = call i32 %24(%struct.mmc_card* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %16, %1
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.mmc_driver* @to_mmc_driver(i64) #1

declare dso_local %struct.mmc_card.0* @dev_to_mmc_card(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
