; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_longhaul.c_do_longhaul1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_longhaul.c_do_longhaul1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.msr_bcr2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MSR_VIA_BCR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_longhaul1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_longhaul1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.msr_bcr2, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @MSR_VIA_BCR2, align 4
  %5 = bitcast %union.msr_bcr2* %3 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @rdmsrl(i32 %4, i32 %6)
  %8 = bitcast %union.msr_bcr2* %3 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 255
  %12 = bitcast %union.msr_bcr2* %3 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = call i32 (...) @safe_halt()
  %15 = load i32, i32* @MSR_VIA_BCR2, align 4
  %16 = bitcast %union.msr_bcr2* %3 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wrmsrl(i32 %15, i32 %17)
  %19 = call i32 (...) @ACPI_FLUSH_CPU_CACHE()
  %20 = call i32 (...) @halt()
  %21 = call i32 (...) @local_irq_disable()
  %22 = load i32, i32* @MSR_VIA_BCR2, align 4
  %23 = bitcast %union.msr_bcr2* %3 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rdmsrl(i32 %22, i32 %24)
  %26 = bitcast %union.msr_bcr2* %3 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @MSR_VIA_BCR2, align 4
  %29 = bitcast %union.msr_bcr2* %3 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wrmsrl(i32 %28, i32 %30)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @safe_halt(...) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @ACPI_FLUSH_CPU_CACHE(...) #1

declare dso_local i32 @halt(...) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
