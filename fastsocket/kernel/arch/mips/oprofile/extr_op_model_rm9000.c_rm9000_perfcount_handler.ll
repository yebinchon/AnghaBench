; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_rm9000.c_rm9000_perfcount_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_rm9000.c_rm9000_perfcount_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pt_regs = type { i32 }

@RM9K_COUNTER1_OVERFLOW = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RM9K_COUNTER2_OVERFLOW = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rm9000_perfcount_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm9000_perfcount_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = call i32 (...) @read_c0_perfcontrol()
  store i32 %10, i32* %5, align 4
  %11 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %11, %struct.pt_regs** %6, align 8
  %12 = call i32 @write_c0_perfcontrol(i32 0)
  %13 = call i32 (...) @read_c0_perfcount()
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = ashr i32 %15, 32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @RM9K_COUNTER1_OVERFLOW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %23 = call i32 @oprofile_add_sample(%struct.pt_regs* %22, i32 0)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RM9K_COUNTER2_OVERFLOW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %32 = call i32 @oprofile_add_sample(%struct.pt_regs* %31, i32 1)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 32
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @write_c0_perfcount(i32 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 4
  %42 = call i32 @write_c0_perfcontrol(i32 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @read_c0_perfcontrol(...) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @write_c0_perfcontrol(i32) #1

declare dso_local i32 @read_c0_perfcount(...) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @write_c0_perfcount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
