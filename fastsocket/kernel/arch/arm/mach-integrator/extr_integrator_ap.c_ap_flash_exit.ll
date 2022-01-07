; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_integrator_ap.c_ap_flash_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_integrator_ap.c_ap_flash_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGRATOR_SC_CTRL_nFLVPPEN = common dso_local global i32 0, align 4
@INTEGRATOR_SC_CTRL_nFLWP = common dso_local global i32 0, align 4
@SC_CTRLC = common dso_local global i32 0, align 4
@EBI_CSR1 = common dso_local global i32 0, align 4
@INTEGRATOR_EBI_WRITE_ENABLE = common dso_local global i32 0, align 4
@EBI_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ap_flash_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_flash_exit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @INTEGRATOR_SC_CTRL_nFLVPPEN, align 4
  %3 = load i32, i32* @INTEGRATOR_SC_CTRL_nFLWP, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @SC_CTRLC, align 4
  %6 = call i32 @writel(i32 %4, i32 %5)
  %7 = load i32, i32* @EBI_CSR1, align 4
  %8 = call i32 @readl(i32 %7)
  %9 = load i32, i32* @INTEGRATOR_EBI_WRITE_ENABLE, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @EBI_CSR1, align 4
  %14 = call i32 @writel(i32 %12, i32 %13)
  %15 = load i32, i32* @EBI_CSR1, align 4
  %16 = call i32 @readl(i32 %15)
  %17 = load i32, i32* @INTEGRATOR_EBI_WRITE_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %0
  %21 = load i32, i32* @EBI_LOCK, align 4
  %22 = call i32 @writel(i32 41055, i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @EBI_CSR1, align 4
  %25 = call i32 @writel(i32 %23, i32 %24)
  %26 = load i32, i32* @EBI_LOCK, align 4
  %27 = call i32 @writel(i32 0, i32 %26)
  br label %28

28:                                               ; preds = %20, %0
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
