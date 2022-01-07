; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* }
%struct.dma_buf_attachment = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_detach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %4, align 8
  %5 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %6 = icmp ne %struct.dma_buf* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %9 = icmp ne %struct.dma_buf_attachment* %8, null
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ true, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %45

17:                                               ; preds = %11
  %18 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %19 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %22 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %25 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)*, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)** %27, align 8
  %29 = icmp ne i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %17
  %31 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %32 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)*, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)** %34, align 8
  %36 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %37 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %38 = call i32 %35(%struct.dma_buf* %36, %struct.dma_buf_attachment* %37)
  br label %39

39:                                               ; preds = %30, %17
  %40 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %41 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %44 = call i32 @kfree(%struct.dma_buf_attachment* %43)
  br label %45

45:                                               ; preds = %39, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.dma_buf_attachment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
