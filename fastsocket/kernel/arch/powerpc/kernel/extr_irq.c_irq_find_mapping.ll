; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_find_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_find_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_host = type { i64 }
%struct.TYPE_2__ = type { i32, %struct.irq_host* }

@irq_virq_count = common dso_local global i32 0, align 4
@irq_default_host = common dso_local global %struct.irq_host* null, align 8
@NO_IRQ = common dso_local global i32 0, align 4
@IRQ_HOST_MAP_LEGACY = common dso_local global i64 0, align 8
@NUM_ISA_INTERRUPTS = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_find_mapping(%struct.irq_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_host* %0, %struct.irq_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @irq_virq_count, align 4
  %10 = urem i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %12 = icmp eq %struct.irq_host* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.irq_host*, %struct.irq_host** @irq_default_host, align 8
  store %struct.irq_host* %14, %struct.irq_host** %4, align 8
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %17 = icmp eq %struct.irq_host* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @NO_IRQ, align 4
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %15
  %21 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %22 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IRQ_HOST_MAP_LEGACY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %65, %34
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.irq_host*, %struct.irq_host** %41, align 8
  %43 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %44 = icmp eq %struct.irq_host* %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %71

56:                                               ; preds = %45, %36
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @irq_virq_count, align 4
  %61 = icmp uge i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %36, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @NO_IRQ, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %54, %26, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
