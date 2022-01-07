; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_pmu.c_cbe_enable_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_pmu.c_cbe_enable_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbe_pmd_shadow_regs = type { i64 }

@pm_control = common dso_local global i32 0, align 4
@CBE_PM_ENABLE_PERF_MON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbe_enable_pm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cbe_pmd_shadow_regs*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cbe_pmd_shadow_regs* @cbe_get_cpu_pmd_shadow_regs(i32 %5)
  store %struct.cbe_pmd_shadow_regs* %6, %struct.cbe_pmd_shadow_regs** %3, align 8
  %7 = load %struct.cbe_pmd_shadow_regs*, %struct.cbe_pmd_shadow_regs** %3, align 8
  %8 = getelementptr inbounds %struct.cbe_pmd_shadow_regs, %struct.cbe_pmd_shadow_regs* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @pm_control, align 4
  %11 = call i32 @cbe_read_pm(i32 %9, i32 %10)
  %12 = load i32, i32* @CBE_PM_ENABLE_PERF_MON, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @pm_control, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @cbe_write_pm(i32 %14, i32 %15, i32 %16)
  ret void
}

declare dso_local %struct.cbe_pmd_shadow_regs* @cbe_get_cpu_pmd_shadow_regs(i32) #1

declare dso_local i32 @cbe_read_pm(i32, i32) #1

declare dso_local i32 @cbe_write_pm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
