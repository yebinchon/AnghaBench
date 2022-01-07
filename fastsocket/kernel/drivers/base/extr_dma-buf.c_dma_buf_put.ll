; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_put(%struct.dma_buf* %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %2, align 8
  %3 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %4 = icmp ne %struct.dma_buf* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %7 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  %18 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %19 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fput(i32 %20)
  br label %22

22:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
