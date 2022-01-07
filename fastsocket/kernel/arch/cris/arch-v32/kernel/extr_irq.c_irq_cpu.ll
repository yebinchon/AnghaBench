; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_irq.c_irq_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_irq.c_irq_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@irq_lock = common dso_local global i32 0, align 4
@irq_allocations = common dso_local global %struct.TYPE_2__* null, align 8
@FIRST_IRQ = common dso_local global i32 0, align 4
@CPU_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @irq_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @irq_lock, i64 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_allocations, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FIRST_IRQ, align 4
  %11 = sub nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CPU_FIXED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @irq_lock, i64 %20)
  %22 = call i32 (...) @smp_processor_id()
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_allocations, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @FIRST_IRQ, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @cpu_isset(i32 %24, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %54

36:                                               ; preds = %23
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_allocations, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @FIRST_IRQ, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @first_cpu(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_allocations, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @FIRST_IRQ, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %36, %35
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* @irq_lock, i64 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_isset(i32, i32) #1

declare dso_local i32 @first_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
