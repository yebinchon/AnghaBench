; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_map_attachment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_map_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sg_table* (%struct.dma_buf_attachment*, i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.sg_table* @ERR_PTR(i32 %8)
  store %struct.sg_table* %9, %struct.sg_table** %6, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %12 = icmp ne %struct.dma_buf_attachment* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %15 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ true, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.sg_table* @ERR_PTR(i32 %26)
  store %struct.sg_table* %27, %struct.sg_table** %3, align 8
  br label %40

28:                                               ; preds = %19
  %29 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %30 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.sg_table* (%struct.dma_buf_attachment*, i32)*, %struct.sg_table* (%struct.dma_buf_attachment*, i32)** %34, align 8
  %36 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.sg_table* %35(%struct.dma_buf_attachment* %36, i32 %37)
  store %struct.sg_table* %38, %struct.sg_table** %6, align 8
  %39 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  store %struct.sg_table* %39, %struct.sg_table** %3, align 8
  br label %40

40:                                               ; preds = %28, %24
  %41 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %41
}

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
