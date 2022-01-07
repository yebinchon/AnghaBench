; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_pmu.c_cbe_write_phys_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_pmu.c_cbe_write_phys_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbe_pmd_shadow_regs = type { i32 }

@NR_PHYS_CTRS = common dso_local global i64 0, align 8
@pm_ctr = common dso_local global i32* null, align 8
@pm_control = common dso_local global i32 0, align 4
@CBE_PM_ENABLE_PERF_MON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbe_write_phys_ctr(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cbe_pmd_shadow_regs*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @NR_PHYS_CTRS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load i32*, i32** @pm_ctr, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @WRITE_WO_MMIO(i32 %16, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @pm_control, align 4
  %21 = call i64 @cbe_read_pm(i64 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @CBE_PM_ENABLE_PERF_MON, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %12
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @pm_control, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @cbe_write_pm(i64 %27, i32 %28, i64 %29)
  br label %41

31:                                               ; preds = %12
  %32 = load i64, i64* %4, align 8
  %33 = call %struct.cbe_pmd_shadow_regs* @cbe_get_cpu_pmd_shadow_regs(i64 %32)
  store %struct.cbe_pmd_shadow_regs* %33, %struct.cbe_pmd_shadow_regs** %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 1, %35
  %37 = load %struct.cbe_pmd_shadow_regs*, %struct.cbe_pmd_shadow_regs** %7, align 8
  %38 = getelementptr inbounds %struct.cbe_pmd_shadow_regs, %struct.cbe_pmd_shadow_regs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %31, %26
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @WRITE_WO_MMIO(i32, i64) #1

declare dso_local i64 @cbe_read_pm(i64, i32) #1

declare dso_local i32 @cbe_write_pm(i64, i32, i64) #1

declare dso_local %struct.cbe_pmd_shadow_regs* @cbe_get_cpu_pmd_shadow_regs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
