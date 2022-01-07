; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_generic.c_sa1100_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_generic.c_sa1100_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCFR_OPDE = common dso_local global i32 0, align 4
@PCFR_FP = common dso_local global i32 0, align 4
@PCFR_FS = common dso_local global i32 0, align 4
@PCFR = common dso_local global i32 0, align 4
@GRER = common dso_local global i32 0, align 4
@GFER = common dso_local global i32 0, align 4
@PWER = common dso_local global i32 0, align 4
@PSPR = common dso_local global i64 0, align 8
@PMCR_SF = common dso_local global i32 0, align 4
@PMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sa1100_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_power_off() #0 {
  %1 = call i32 @mdelay(i32 100)
  %2 = call i32 (...) @local_irq_disable()
  %3 = load i32, i32* @PCFR_OPDE, align 4
  %4 = load i32, i32* @PCFR_FP, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @PCFR_FS, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* @PCFR, align 4
  store i32 1, i32* @GRER, align 4
  store i32 1, i32* @GFER, align 4
  store i32 1, i32* @PWER, align 4
  store i64 0, i64* @PSPR, align 8
  %8 = load i32, i32* @PMCR_SF, align 4
  store i32 %8, i32* @PMCR, align 4
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
