; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_shared_reg_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_shared_reg_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, i32)* @nhmex_rbox_shared_reg_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_rbox_shared_reg_config(%struct.intel_uncore_box* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_extra_reg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %9 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %8, i32 0, i32 0
  %10 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %10, i64 %12
  store %struct.intel_uncore_extra_reg* %13, %struct.intel_uncore_extra_reg** %5, align 8
  %14 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %5, align 8
  %15 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %5, align 8
  %19 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %5, align 8
  %22 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
