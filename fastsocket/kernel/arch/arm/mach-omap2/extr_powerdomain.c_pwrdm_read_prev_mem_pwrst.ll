; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_read_prev_mem_pwrst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_read_prev_mem_pwrst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@OMAP3430_LASTMEM1STATEENTERED_MASK = common dso_local global i32 0, align 4
@OMAP3430_LASTMEM2STATEENTERED_MASK = common dso_local global i32 0, align 4
@OMAP3430_LASTSHAREDL2CACHEFLATSTATEENTERED_MASK = common dso_local global i32 0, align 4
@OMAP3430_LASTL2FLATMEMSTATEENTERED_MASK = common dso_local global i32 0, align 4
@OMAP3430_PM_PREPWSTST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_read_prev_mem_pwrst(%struct.powerdomain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %8 = icmp ne %struct.powerdomain* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %14 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %32 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @OMAP3430_LASTMEM1STATEENTERED_MASK, align 4
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %22
  %27 = load i32, i32* @OMAP3430_LASTMEM2STATEENTERED_MASK, align 4
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @OMAP3430_LASTSHAREDL2CACHEFLATSTATEENTERED_MASK, align 4
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @OMAP3430_LASTL2FLATMEMSTATEENTERED_MASK, align 4
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %22
  %33 = call i32 @WARN_ON(i32 1)
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %30, %28, %26, %24
  %37 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %38 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OMAP3430_PM_PREPWSTST, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @prm_read_mod_bits_shift(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %32, %19, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @prm_read_mod_bits_shift(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
