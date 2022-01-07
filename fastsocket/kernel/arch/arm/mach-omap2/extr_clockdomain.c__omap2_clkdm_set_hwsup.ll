; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c__omap2_clkdm_set_hwsup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c__omap2_clkdm_set_hwsup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OMAP24XX_CLKSTCTRL_ENABLE_AUTO = common dso_local global i32 0, align 4
@OMAP24XX_CLKSTCTRL_DISABLE_AUTO = common dso_local global i32 0, align 4
@OMAP34XX_CLKSTCTRL_ENABLE_AUTO = common dso_local global i32 0, align 4
@OMAP34XX_CLKSTCTRL_DISABLE_AUTO = common dso_local global i32 0, align 4
@CM_CLKSTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clockdomain*, i32)* @_omap2_clkdm_set_hwsup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap2_clkdm_set_hwsup(%struct.clockdomain* %0, i32 %1) #0 {
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 (...) @cpu_is_omap24xx()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @OMAP24XX_CLKSTCTRL_ENABLE_AUTO, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @OMAP24XX_CLKSTCTRL_DISABLE_AUTO, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11
  br label %30

16:                                               ; preds = %2
  %17 = call i64 (...) @cpu_is_omap34xx()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @OMAP34XX_CLKSTCTRL_ENABLE_AUTO, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @OMAP34XX_CLKSTCTRL_DISABLE_AUTO, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %29

27:                                               ; preds = %16
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %26
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %32 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %36 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @__ffs(i32 %37)
  %39 = shl i32 %34, %38
  %40 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %41 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CM_CLKSTCTRL, align 4
  %47 = call i32 @cm_rmw_mod_reg_bits(i32 %33, i32 %39, i32 %45, i32 %46)
  ret void
}

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @cm_rmw_mod_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
