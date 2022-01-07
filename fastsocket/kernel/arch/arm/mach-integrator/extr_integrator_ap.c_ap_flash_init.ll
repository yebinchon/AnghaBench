; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_integrator_ap.c_ap_flash_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_integrator_ap.c_ap_flash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGRATOR_SC_CTRL_nFLVPPEN = common dso_local global i32 0, align 4
@INTEGRATOR_SC_CTRL_nFLWP = common dso_local global i32 0, align 4
@SC_CTRLC = common dso_local global i32 0, align 4
@EBI_CSR1 = common dso_local global i32 0, align 4
@INTEGRATOR_EBI_WRITE_ENABLE = common dso_local global i32 0, align 4
@EBI_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ap_flash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_flash_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @INTEGRATOR_SC_CTRL_nFLVPPEN, align 4
  %3 = load i32, i32* @INTEGRATOR_SC_CTRL_nFLWP, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @SC_CTRLC, align 4
  %6 = call i32 @writel(i32 %4, i32 %5)
  %7 = load i32, i32* @EBI_CSR1, align 4
  %8 = call i32 @readl(i32 %7)
  %9 = load i32, i32* @INTEGRATOR_EBI_WRITE_ENABLE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @EBI_CSR1, align 4
  %13 = call i32 @writel(i32 %11, i32 %12)
  %14 = load i32, i32* @EBI_CSR1, align 4
  %15 = call i32 @readl(i32 %14)
  %16 = load i32, i32* @INTEGRATOR_EBI_WRITE_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* @EBI_LOCK, align 4
  %21 = call i32 @writel(i32 41055, i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @EBI_CSR1, align 4
  %24 = call i32 @writel(i32 %22, i32 %23)
  %25 = load i32, i32* @EBI_LOCK, align 4
  %26 = call i32 @writel(i32 0, i32 %25)
  br label %27

27:                                               ; preds = %19, %0
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
