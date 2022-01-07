; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_v7.c_armv7_pmnc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_v7.c_armv7_pmnc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@FLAG_C = common dso_local global i32 0, align 4
@CCNT = common dso_local global i32 0, align 4
@CNT0 = common dso_local global i32 0, align 4
@CNTMAX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @armv7_pmnc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv7_pmnc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %10, %struct.pt_regs** %5, align 8
  %11 = call i32 (...) @armv7_stop_pmnc()
  %12 = call i32 (...) @armv7_pmnc_getreset_flags()
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @FLAG_C, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = call i32 (...) @smp_processor_id()
  %19 = load i32, i32* @CCNT, align 4
  %20 = call i32 @CPU_COUNTER(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @CCNT, align 4
  %22 = call i32 @armv7_pmnc_reset_counter(i32 %21)
  %23 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @oprofile_add_sample(%struct.pt_regs* %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load i32, i32* @CNT0, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %50, %26
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CNTMAX, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CNT0, align 4
  %36 = sub i32 %34, %35
  %37 = shl i32 1, %36
  %38 = and i32 %33, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = call i32 (...) @smp_processor_id()
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @CPU_COUNTER(i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @armv7_pmnc_reset_counter(i32 %44)
  %46 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @oprofile_add_sample(%struct.pt_regs* %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %28

53:                                               ; preds = %28
  %54 = call i32 (...) @armv7_start_pmnc()
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @armv7_stop_pmnc(...) #1

declare dso_local i32 @armv7_pmnc_getreset_flags(...) #1

declare dso_local i32 @CPU_COUNTER(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @armv7_pmnc_reset_counter(i32) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @armv7_start_pmnc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
