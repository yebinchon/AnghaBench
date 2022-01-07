; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_fidvid_msr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_fidvid_msr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_FIDVID_STATUS = common dso_local global i32 0, align 4
@MSR_S_HI_CURRENT_VID = common dso_local global i32 0, align 4
@MSR_S_LO_CURRENT_FID = common dso_local global i32 0, align 4
@MSR_C_LO_VID_SHIFT = common dso_local global i32 0, align 4
@MSR_C_HI_STP_GNT_BENIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cpu%d, init lo 0x%x, hi 0x%x\0A\00", align 1
@MSR_FIDVID_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fidvid_msr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fidvid_msr_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MSR_FIDVID_STATUS, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @rdmsr(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MSR_S_HI_CURRENT_VID, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @MSR_S_LO_CURRENT_FID, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MSR_C_LO_VID_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @MSR_C_HI_STP_GNT_BENIGN, align 4
  store i32 %20, i32* %2, align 4
  %21 = call i32 (...) @smp_processor_id()
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @MSR_FIDVID_CTL, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @wrmsr(i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
