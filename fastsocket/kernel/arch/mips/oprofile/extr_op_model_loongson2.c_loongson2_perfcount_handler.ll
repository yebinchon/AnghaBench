; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_loongson2.c_loongson2_perfcount_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_loongson2.c_loongson2_perfcount_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.pt_regs = type { i32 }

@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@sample_lock = common dso_local global i32 0, align 4
@LOONGSON2_PERFCNT_OVERFLOW = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @loongson2_perfcount_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson2_perfcount_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %12, %struct.pt_regs** %9, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = call i32 (...) @read_c0_perfcnt()
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 32
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @sample_lock, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LOONGSON2_PERFCNT_OVERFLOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %36 = call i32 @oprofile_add_sample(%struct.pt_regs* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %20
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @LOONGSON2_PERFCNT_OVERFLOW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %49 = call i32 @oprofile_add_sample(%struct.pt_regs* %48, i32 1)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %39
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @sample_lock, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 32
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @write_c0_perfcnt(i32 %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @read_c0_perfcnt(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @write_c0_perfcnt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
