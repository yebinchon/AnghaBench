; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_free_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_free_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.irq_host*, i32 }
%struct.irq_host = type { i32 }

@NUM_ISA_INTERRUPTS = common dso_local global i32 0, align 4
@irq_virq_count = common dso_local global i32 0, align 4
@irq_big_lock = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_free_virt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_host*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %10 = icmp ult i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* @irq_virq_count, align 4
  %20 = icmp ugt i32 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @irq_big_lock, i64 %25)
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %66, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %30, %31
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* @irq_virq_count, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %34
  br label %66

45:                                               ; preds = %38
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.irq_host*, %struct.irq_host** %50, align 8
  store %struct.irq_host* %51, %struct.irq_host** %7, align 8
  %52 = load %struct.irq_host*, %struct.irq_host** %7, align 8
  %53 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %54, i32* %59, align 8
  %60 = call i32 (...) @smp_wmb()
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.irq_host* null, %struct.irq_host** %65, align 8
  br label %66

66:                                               ; preds = %45, %44
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %28

69:                                               ; preds = %28
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @irq_big_lock, i64 %70)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
