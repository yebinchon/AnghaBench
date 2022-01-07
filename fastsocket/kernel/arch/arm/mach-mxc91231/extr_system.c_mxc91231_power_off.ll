; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_system.c_mxc91231_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_system.c_mxc91231_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDOG_WCR = common dso_local global i32 0, align 4
@WDOG_WCR_OUT_ENABLE = common dso_local global i32 0, align 4
@WDOG_WCR_ASSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mxc91231_power_off() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WDOG_WCR, align 4
  %3 = call i32 @__raw_readw(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @WDOG_WCR_OUT_ENABLE, align 4
  %5 = load i32, i32* %1, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @WDOG_WCR_ASSERT, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @WDOG_WCR, align 4
  %13 = call i32 @__raw_writew(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
