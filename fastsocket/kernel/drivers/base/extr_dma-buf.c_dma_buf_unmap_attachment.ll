; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_unmap_attachment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_unmap_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf_attachment = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dma_buf_attachment*, %struct.sg_table*, i32)* }
%struct.sg_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_unmap_attachment(%struct.dma_buf_attachment* %0, %struct.sg_table* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.sg_table*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store %struct.sg_table* %1, %struct.sg_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %8 = icmp ne %struct.dma_buf_attachment* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %11 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %16 = icmp ne %struct.sg_table* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %9, %3
  %19 = phi i1 [ true, %9 ], [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %36

24:                                               ; preds = %18
  %25 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %26 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dma_buf_attachment*, %struct.sg_table*, i32)*, i32 (%struct.dma_buf_attachment*, %struct.sg_table*, i32)** %30, align 8
  %32 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %33 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 %31(%struct.dma_buf_attachment* %32, %struct.sg_table* %33, i32 %34)
  br label %36

36:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
