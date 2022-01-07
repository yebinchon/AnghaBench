; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_system.c_mxc91231_prepare_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mxc91231/extr_system.c_mxc91231_prepare_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MXC_DSM_CRM_CONTROL = common dso_local global i32 0, align 4
@MXC_DSM_CRM_CTRL_LPMD0 = common dso_local global i32 0, align 4
@MXC_DSM_CRM_CTRL_LPMD1 = common dso_local global i32 0, align 4
@MXC_DSM_CRM_CTRL_LPMD_WAIT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mxc91231_prepare_idle() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MXC_DSM_CRM_CONTROL, align 4
  %3 = call i32 @__raw_readl(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @MXC_DSM_CRM_CTRL_LPMD0, align 4
  %5 = load i32, i32* @MXC_DSM_CRM_CTRL_LPMD1, align 4
  %6 = or i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @MXC_DSM_CRM_CTRL_LPMD_WAIT_MODE, align 4
  %11 = load i32, i32* %1, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @MXC_DSM_CRM_CONTROL, align 4
  %15 = call i32 @__raw_writel(i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
