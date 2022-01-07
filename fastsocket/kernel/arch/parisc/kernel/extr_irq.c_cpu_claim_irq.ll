; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_irq.c_cpu_claim_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_irq.c_cpu_claim_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, %struct.irq_chip*, i64 }
%struct.irq_chip = type { i32 (i32)* }

@irq_desc = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@cpu_interrupt_type = common dso_local global %struct.irq_chip zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_claim_irq(i32 %0, %struct.irq_chip* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.irq_chip* %1, %struct.irq_chip** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.irq_chip*, %struct.irq_chip** %23, align 8
  %25 = icmp ne %struct.irq_chip* %24, @cpu_interrupt_type
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %18
  %30 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %31 = icmp ne %struct.irq_chip* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store %struct.irq_chip* %33, %struct.irq_chip** %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %39, i8** %44, align 8
  %45 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.irq_chip, %struct.irq_chip* @cpu_interrupt_type, i32 0, i32 0), align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 %45(i32 %46)
  br label %48

48:                                               ; preds = %32, %29
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %26, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
