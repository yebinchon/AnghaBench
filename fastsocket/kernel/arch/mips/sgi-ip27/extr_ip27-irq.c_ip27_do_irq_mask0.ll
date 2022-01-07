; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_ip27_do_irq_mask0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_ip27_do_irq_mask0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.slice_data* }
%struct.slice_data = type { i32* }

@PI_INT_MASK0_A = common dso_local global i32 0, align 4
@PI_INT_MASK0_B = common dso_local global i32 0, align 4
@PI_INT_PEND0 = common dso_local global i32 0, align 4
@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@CPU_CALL_A_IRQ = common dso_local global i64 0, align 8
@CPU_CALL_B_IRQ = common dso_local global i64 0, align 8
@CPU_RESCHED_A_IRQ = common dso_local global i64 0, align 8
@CPU_RESCHED_B_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip27_do_irq_mask0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip27_do_irq_mask0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.slice_data*, align 8
  %8 = call i64 (...) @smp_processor_id()
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @cputoslice(i64 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @PI_INT_MASK0_A, align 4
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @PI_INT_MASK0_B, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @PI_INT_PEND0, align 4
  %19 = call i64 @LOCAL_HUB_L(i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @LOCAL_HUB_L(i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %47

28:                                               ; preds = %16
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @ms1bit(i64 %29)
  store i32 %30, i32* %2, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.slice_data*, %struct.slice_data** %34, align 8
  store %struct.slice_data* %35, %struct.slice_data** %7, align 8
  %36 = load %struct.slice_data*, %struct.slice_data** %7, align 8
  %37 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @do_IRQ(i32 %43)
  %45 = load i32, i32* @PI_INT_PEND0, align 4
  %46 = call i64 @LOCAL_HUB_L(i32 %45)
  br label %47

47:                                               ; preds = %28, %27
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @cputoslice(i64) #1

declare dso_local i64 @LOCAL_HUB_L(i32) #1

declare dso_local i32 @ms1bit(i64) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
