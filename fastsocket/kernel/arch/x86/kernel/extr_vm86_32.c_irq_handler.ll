; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@irqbits_lock = common dso_local global i32 0, align 4
@irqbits = common dso_local global i32 0, align 4
@vm86_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @irqbits_lock, i64 %8)
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @irqbits, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16, %2
  br label %56

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @irqbits, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @irqbits, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %25
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @send_sig(i64 %42, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %36, %25
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @disable_irq_nosync(i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @irqbits_lock, i64 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %24
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @irqbits_lock, i64 %57)
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @send_sig(i64, i32, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
