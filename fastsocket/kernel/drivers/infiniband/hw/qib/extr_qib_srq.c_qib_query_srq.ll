; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_srq.c_qib_query_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_srq.c_qib_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i64 }
%struct.qib_srq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_srq_attr*, align 8
  %5 = alloca %struct.qib_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %4, align 8
  %6 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %7 = call %struct.qib_srq* @to_isrq(%struct.ib_srq* %6)
  store %struct.qib_srq* %7, %struct.qib_srq** %5, align 8
  %8 = load %struct.qib_srq*, %struct.qib_srq** %5, align 8
  %9 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %4, align 8
  %14 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.qib_srq*, %struct.qib_srq** %5, align 8
  %16 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %4, align 8
  %20 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.qib_srq*, %struct.qib_srq** %5, align 8
  %22 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %4, align 8
  %25 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  ret i32 0
}

declare dso_local %struct.qib_srq* @to_isrq(%struct.ib_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
