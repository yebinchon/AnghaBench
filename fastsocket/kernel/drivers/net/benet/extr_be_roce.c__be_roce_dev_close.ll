; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_roce.c__be_roce_dev_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_roce.c__be_roce_dev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)* }
%struct.be_adapter = type { i64 }

@ocrdma_drv = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_be_roce_dev_close(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ocrdma_drv, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ocrdma_drv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i64, i32)*, i32 (i64, i32)** %12, align 8
  %14 = icmp ne i32 (i64, i32)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ocrdma_drv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i64, i32)*, i32 (i64, i32)** %17, align 8
  %19 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 %18(i64 %21, i32 1)
  br label %23

23:                                               ; preds = %15, %10, %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
