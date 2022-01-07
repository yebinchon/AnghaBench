; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_shared_reg_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_shared_reg_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32, i32 }

@EXTRA_REG_NHMEX_M_ZDP_CTL_FVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, i32)* @nhmex_mbox_shared_reg_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_mbox_shared_reg_config(%struct.intel_uncore_box* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore_extra_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %14 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %13, i32 0, i32 0
  %15 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %15, i64 %17
  %19 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %23 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %22, i32 0, i32 0
  %24 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %23, align 8
  %25 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %24, i64 %26
  store %struct.intel_uncore_extra_reg* %27, %struct.intel_uncore_extra_reg** %6, align 8
  %28 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %29 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %33 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %36 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %21, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
