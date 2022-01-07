; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_arm11_core.c_arm11_pmu_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_arm11_core.c_arm11_pmu_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@PMN0 = common dso_local global i32 0, align 4
@CCNT = common dso_local global i32 0, align 4
@PMCR_OFL_PMN0 = common dso_local global i32 0, align 4
@PMCR_IEN_PMN0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arm11_pmu_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm11_pmu_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %8, %struct.pt_regs** %5, align 8
  %9 = call i32 (...) @arm11_read_pmnc()
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @PMN0, align 4
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CCNT, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PMCR_OFL_PMN0, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PMCR_IEN_PMN0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @arm11_reset_counter(i32 %30)
  %32 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %33 = call i32 (...) @smp_processor_id()
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @CPU_COUNTER(i32 %33, i32 %34)
  %36 = call i32 @oprofile_add_sample(%struct.pt_regs* %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %22, %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @arm11_write_pmnc(i32 %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %44
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @arm11_read_pmnc(...) #1

declare dso_local i32 @arm11_reset_counter(i32) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @CPU_COUNTER(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @arm11_write_pmnc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
