; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_set_mem_onst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_set_mem_onst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"powerdomain: setting next memory powerstate for domain %s bank %0x while pwrdm-ON to %0x\0A\00", align 1
@OMAP3430_SHAREDL1CACHEFLATONSTATE_MASK = common dso_local global i32 0, align 4
@OMAP3430_L1FLATMEMONSTATE_MASK = common dso_local global i32 0, align 4
@OMAP3430_SHAREDL2CACHEFLATONSTATE_MASK = common dso_local global i32 0, align 4
@OMAP3430_L2FLATMEMONSTATE_MASK = common dso_local global i32 0, align 4
@PM_PWSTCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_set_mem_onst(%struct.powerdomain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powerdomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %10 = icmp ne %struct.powerdomain* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %70

14:                                               ; preds = %3
  %15 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %16 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %14
  %25 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %26 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %24
  %40 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %41 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %55 [
    i32 0, label %47
    i32 1, label %49
    i32 2, label %51
    i32 3, label %53
  ]

47:                                               ; preds = %39
  %48 = load i32, i32* @OMAP3430_SHAREDL1CACHEFLATONSTATE_MASK, align 4
  store i32 %48, i32* %8, align 4
  br label %59

49:                                               ; preds = %39
  %50 = load i32, i32* @OMAP3430_L1FLATMEMONSTATE_MASK, align 4
  store i32 %50, i32* %8, align 4
  br label %59

51:                                               ; preds = %39
  %52 = load i32, i32* @OMAP3430_SHAREDL2CACHEFLATONSTATE_MASK, align 4
  store i32 %52, i32* %8, align 4
  br label %59

53:                                               ; preds = %39
  %54 = load i32, i32* @OMAP3430_L2FLATMEMONSTATE_MASK, align 4
  store i32 %54, i32* %8, align 4
  br label %59

55:                                               ; preds = %39
  %56 = call i32 @WARN_ON(i32 1)
  %57 = load i32, i32* @EEXIST, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %70

59:                                               ; preds = %53, %51, %49, %47
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @__ffs(i32 %62)
  %64 = shl i32 %61, %63
  %65 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %66 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PM_PWSTCTRL, align 4
  %69 = call i32 @prm_rmw_mod_reg_bits(i32 %60, i32 %64, i32 %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %59, %55, %36, %21, %11
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @prm_rmw_mod_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
