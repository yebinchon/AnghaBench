; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_put_shared_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_put_shared_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32 }

@EXTRA_REG_NHMEX_M_ZDP_CTL_FVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, i32)* @nhmex_mbox_put_shared_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_extra_reg*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %11 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %10, i32 0, i32 0
  %12 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %12, i64 %14
  store %struct.intel_uncore_extra_reg* %15, %struct.intel_uncore_extra_reg** %5, align 8
  %16 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %5, align 8
  %17 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %16, i32 0, i32 0
  %18 = call i32 @atomic_dec(i32* %17)
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %24 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %23, i32 0, i32 0
  %25 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %24, align 8
  %26 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %25, i64 %27
  store %struct.intel_uncore_extra_reg* %28, %struct.intel_uncore_extra_reg** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 8
  %31 = shl i32 1, %30
  %32 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %5, align 8
  %33 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %32, i32 0, i32 0
  %34 = call i32 @atomic_sub(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
