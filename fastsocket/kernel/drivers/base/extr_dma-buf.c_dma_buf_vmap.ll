; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_vmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_buf_vmap(%struct.dma_buf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dma_buf*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  %4 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %5 = icmp ne %struct.dma_buf* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %13 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i8* (%struct.dma_buf*)**
  %17 = load i8* (%struct.dma_buf*)*, i8* (%struct.dma_buf*)** %16, align 8
  %18 = icmp ne i8* (%struct.dma_buf*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %21 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i8* (%struct.dma_buf*)**
  %25 = load i8* (%struct.dma_buf*)*, i8* (%struct.dma_buf*)** %24, align 8
  %26 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %27 = call i8* %25(%struct.dma_buf* %26)
  store i8* %27, i8** %2, align 8
  br label %29

28:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %29

29:                                               ; preds = %28, %19, %10
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
