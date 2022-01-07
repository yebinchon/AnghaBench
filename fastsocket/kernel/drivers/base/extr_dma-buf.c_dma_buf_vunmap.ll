; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_vunmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_vunmap(%struct.dma_buf* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i8*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %6 = icmp ne %struct.dma_buf* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %14 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dma_buf*, i8*)*, i32 (%struct.dma_buf*, i8*)** %16, align 8
  %18 = icmp ne i32 (%struct.dma_buf*, i8*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %21 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dma_buf*, i8*)*, i32 (%struct.dma_buf*, i8*)** %23, align 8
  %25 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 %24(%struct.dma_buf* %25, i8* %26)
  br label %28

28:                                               ; preds = %11, %19, %12
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
