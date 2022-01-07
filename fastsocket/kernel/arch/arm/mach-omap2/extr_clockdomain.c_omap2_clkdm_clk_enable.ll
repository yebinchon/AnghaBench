; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_omap2_clkdm_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_omap2_clkdm_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"clockdomain: clkdm %s: clk %s now enabled\0A\00", align 1
@OMAP34XX_CLKSTCTRL_ENABLE_AUTO = common dso_local global i32 0, align 4
@OMAP24XX_CLKSTCTRL_ENABLE_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_clkdm_clk_enable(%struct.clockdomain* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %7 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %8 = icmp ne %struct.clockdomain* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.clk*, %struct.clk** %5, align 8
  %11 = icmp ne %struct.clk* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %9
  %16 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %17 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %16, i32 0, i32 2
  %18 = call i32 @atomic_inc_return(i32* %17)
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %62

21:                                               ; preds = %15
  %22 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %23 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.clk*, %struct.clk** %5, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %30 = call i32 @omap2_clkdm_clktrctrl_read(%struct.clockdomain* %29)
  store i32 %30, i32* %6, align 4
  %31 = call i64 (...) @cpu_is_omap34xx()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @OMAP34XX_CLKSTCTRL_ENABLE_AUTO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %21
  %38 = call i64 (...) @cpu_is_omap24xx()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @OMAP24XX_CLKSTCTRL_ENABLE_AUTO, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40, %33
  %45 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %46 = call i32 @_omap2_clkdm_set_hwsup(%struct.clockdomain* %45, i32 0)
  %47 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %48 = call i32 @_clkdm_add_autodeps(%struct.clockdomain* %47)
  %49 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %50 = call i32 @_omap2_clkdm_set_hwsup(%struct.clockdomain* %49, i32 1)
  br label %54

51:                                               ; preds = %40, %37
  %52 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %53 = call i32 @omap2_clkdm_wakeup(%struct.clockdomain* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %56 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pwrdm_wait_transition(i32 %58)
  %60 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %61 = call i32 @pwrdm_clkdm_state_switch(%struct.clockdomain* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %20, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @omap2_clkdm_clktrctrl_read(%struct.clockdomain*) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i32 @_omap2_clkdm_set_hwsup(%struct.clockdomain*, i32) #1

declare dso_local i32 @_clkdm_add_autodeps(%struct.clockdomain*) #1

declare dso_local i32 @omap2_clkdm_wakeup(%struct.clockdomain*) #1

declare dso_local i32 @pwrdm_wait_transition(i32) #1

declare dso_local i32 @pwrdm_clkdm_state_switch(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
