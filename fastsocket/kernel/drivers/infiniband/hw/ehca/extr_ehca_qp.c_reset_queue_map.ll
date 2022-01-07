; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_reset_queue_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_reset_queue_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_queue_map = type { i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_queue_map*)* @reset_queue_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_queue_map(%struct.ehca_queue_map* %0) #0 {
  %2 = alloca %struct.ehca_queue_map*, align 8
  %3 = alloca i32, align 4
  store %struct.ehca_queue_map* %0, %struct.ehca_queue_map** %2, align 8
  %4 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %2, align 8
  %5 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 1
  %8 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %2, align 8
  %9 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %2, align 8
  %11 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %2, align 8
  %13 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %2, align 8
  %17 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %2, align 8
  %22 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %2, align 8
  %29 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %14

38:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
