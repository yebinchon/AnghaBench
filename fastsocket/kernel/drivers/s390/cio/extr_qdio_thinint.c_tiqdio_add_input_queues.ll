; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_add_input_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_add_input_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@css_qdio_omit_svs = common dso_local global i32 0, align 4
@tiq_list_lock = common dso_local global i32 0, align 4
@tiq_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tiqdio_add_input_queues(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  %3 = load i32, i32* @css_qdio_omit_svs, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %7 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 1, i32* @css_qdio_omit_svs, align 4
  br label %12

12:                                               ; preds = %11, %5, %1
  %13 = call i32 @mutex_lock(i32* @tiq_list_lock)
  %14 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %15 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %21 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @list_add_rcu(i32* %25, i32* @tiq_list)
  %27 = call i32 @mutex_unlock(i32* @tiq_list_lock)
  %28 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %29 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xchg(i32 %30, i32 1)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @xchg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
