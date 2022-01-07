; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_omap2_clkdm_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_omap2_clkdm_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLKDM_CAN_FORCE_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"clockdomain: %s does not support forcing wakeup via software\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"clockdomain: forcing wakeup on %s\0A\00", align 1
@OMAP24XX_FORCESTATE = common dso_local global i32 0, align 4
@PM_PWSTCTRL = common dso_local global i32 0, align 4
@OMAP34XX_CLKSTCTRL_FORCE_WAKEUP = common dso_local global i32 0, align 4
@CM_CLKSTCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_clkdm_wakeup(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  %5 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %6 = icmp ne %struct.clockdomain* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CLKDM_CAN_FORCE_WAKEUP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %19 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %10
  %25 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %26 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i64 (...) @cpu_is_omap24xx()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i32, i32* @OMAP24XX_FORCESTATE, align 4
  %33 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %34 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PM_PWSTCTRL, align 4
  %40 = call i32 @cm_clear_mod_reg_bits(i32 %32, i32 %38, i32 %39)
  br label %66

41:                                               ; preds = %24
  %42 = call i64 (...) @cpu_is_omap34xx()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* @OMAP34XX_CLKSTCTRL_FORCE_WAKEUP, align 4
  %46 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %47 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @__ffs(i32 %48)
  %50 = shl i32 %45, %49
  store i32 %50, i32* %4, align 4
  %51 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %52 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %56 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CM_CLKSTCTRL, align 4
  %62 = call i32 @cm_rmw_mod_reg_bits(i32 %53, i32 %54, i32 %60, i32 %61)
  br label %65

63:                                               ; preds = %41
  %64 = call i32 (...) @BUG()
  br label %65

65:                                               ; preds = %63, %44
  br label %66

66:                                               ; preds = %65, %31
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %17, %7
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i32 @cm_clear_mod_reg_bits(i32, i32, i32) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @cm_rmw_mod_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
