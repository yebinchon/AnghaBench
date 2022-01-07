; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_remove_input_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_remove_input_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32, %struct.qdio_q** }
%struct.qdio_q = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@tiq_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tiqdio_remove_input_queues(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  %3 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  %4 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %5 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %11 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %10, i32 0, i32 1
  %12 = load %struct.qdio_q**, %struct.qdio_q*** %11, align 8
  %13 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %12, i64 0
  %14 = load %struct.qdio_q*, %struct.qdio_q** %13, align 8
  store %struct.qdio_q* %14, %struct.qdio_q** %3, align 8
  %15 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %16 = icmp ne %struct.qdio_q* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %19 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %25 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %17, %1
  br label %37

30:                                               ; preds = %23
  %31 = call i32 @mutex_lock(i32* @tiq_list_lock)
  %32 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %33 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %32, i32 0, i32 0
  %34 = call i32 @list_del_rcu(%struct.TYPE_2__* %33)
  %35 = call i32 @mutex_unlock(i32* @tiq_list_lock)
  %36 = call i32 (...) @synchronize_rcu()
  br label %37

37:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
