; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_close_one_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_close_one_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i32, i64, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 (i32, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@irqs_to_free_lock = common dso_local global i32 0, align 4
@irqs_to_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chan*, i32)* @close_one_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_one_chan(%struct.chan* %0, i32 %1) #0 {
  %3 = alloca %struct.chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.chan* %0, %struct.chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.chan*, %struct.chan** %3, align 8
  %7 = getelementptr inbounds %struct.chan, %struct.chan* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %80

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @irqs_to_free_lock, i64 %15)
  %17 = load %struct.chan*, %struct.chan** %3, align 8
  %18 = getelementptr inbounds %struct.chan, %struct.chan* %17, i32 0, i32 8
  %19 = call i32 @list_add(i32* %18, i32* @irqs_to_free)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @irqs_to_free_lock, i64 %20)
  br label %55

22:                                               ; preds = %11
  %23 = load %struct.chan*, %struct.chan** %3, align 8
  %24 = getelementptr inbounds %struct.chan, %struct.chan* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.chan*, %struct.chan** %3, align 8
  %29 = getelementptr inbounds %struct.chan, %struct.chan* %28, i32 0, i32 5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.chan*, %struct.chan** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.chan* %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.chan*, %struct.chan** %3, align 8
  %39 = getelementptr inbounds %struct.chan, %struct.chan* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.chan*, %struct.chan** %3, align 8
  %44 = getelementptr inbounds %struct.chan, %struct.chan* %43, i32 0, i32 5
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.chan*, %struct.chan** %3, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.chan* %50)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load %struct.chan*, %struct.chan** %3, align 8
  %54 = getelementptr inbounds %struct.chan, %struct.chan* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %14
  %56 = load %struct.chan*, %struct.chan** %3, align 8
  %57 = getelementptr inbounds %struct.chan, %struct.chan* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = icmp ne i32 (i32, i32)* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.chan*, %struct.chan** %3, align 8
  %64 = getelementptr inbounds %struct.chan, %struct.chan* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.chan*, %struct.chan** %3, align 8
  %69 = getelementptr inbounds %struct.chan, %struct.chan* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.chan*, %struct.chan** %3, align 8
  %72 = getelementptr inbounds %struct.chan, %struct.chan* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %62, %55
  %76 = load %struct.chan*, %struct.chan** %3, align 8
  %77 = getelementptr inbounds %struct.chan, %struct.chan* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.chan*, %struct.chan** %3, align 8
  %79 = getelementptr inbounds %struct.chan, %struct.chan* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
