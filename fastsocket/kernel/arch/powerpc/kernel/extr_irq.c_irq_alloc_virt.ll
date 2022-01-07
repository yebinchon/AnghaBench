; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_alloc_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_alloc_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.irq_host*, i32 }
%struct.irq_host = type { i32 }

@NO_IRQ = common dso_local global i32 0, align 4
@irq_virq_count = common dso_local global i32 0, align 4
@NUM_ISA_INTERRUPTS = common dso_local global i32 0, align 4
@irq_big_lock = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_alloc_virt(%struct.irq_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_host* %0, %struct.irq_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @NO_IRQ, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @irq_virq_count, align 4
  %18 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %19 = sub i32 %17, %18
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @NO_IRQ, align 4
  store i32 %22, i32* %4, align 4
  br label %117

23:                                               ; preds = %15
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @irq_big_lock, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @irq_virq_count, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.irq_host*, %struct.irq_host** %41, align 8
  %43 = icmp eq %struct.irq_host* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %11, align 4
  br label %86

46:                                               ; preds = %36, %32, %28, %23
  %47 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  store i32 %47, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %74, %46
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @irq_virq_count, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.irq_host*, %struct.irq_host** %57, align 8
  %59 = icmp ne %struct.irq_host* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub i32 %69, %70
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %48

77:                                               ; preds = %68, %48
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @NO_IRQ, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* @irq_big_lock, i64 %82)
  %84 = load i32, i32* @NO_IRQ, align 4
  store i32 %84, i32* %4, align 4
  br label %117

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %44
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %110, %86
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add i32 %90, %91
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.irq_host*, %struct.irq_host** %5, align 8
  %96 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %97, i32* %102, align 8
  %103 = call i32 (...) @smp_wmb()
  %104 = load %struct.irq_host*, %struct.irq_host** %5, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_map, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store %struct.irq_host* %104, %struct.irq_host** %109, align 8
  br label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %88

113:                                              ; preds = %88
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* @irq_big_lock, i64 %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %81, %21
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
