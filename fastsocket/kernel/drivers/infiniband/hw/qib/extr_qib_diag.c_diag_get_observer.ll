; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_diag_get_observer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_diag_get_observer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diag_observer = type { i64, i64 }
%struct.qib_devdata = type { %struct.diag_observer_list_elt* }
%struct.diag_observer_list_elt = type { %struct.diag_observer_list_elt*, %struct.diag_observer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diag_observer* (%struct.qib_devdata*, i64)* @diag_get_observer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diag_observer* @diag_get_observer(%struct.qib_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.diag_observer_list_elt*, align 8
  %6 = alloca %struct.diag_observer*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.diag_observer* null, %struct.diag_observer** %6, align 8
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %7, i32 0, i32 0
  %9 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %8, align 8
  store %struct.diag_observer_list_elt* %9, %struct.diag_observer_list_elt** %5, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %12 = icmp ne %struct.diag_observer_list_elt* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %15 = getelementptr inbounds %struct.diag_observer_list_elt, %struct.diag_observer_list_elt* %14, i32 0, i32 1
  %16 = load %struct.diag_observer*, %struct.diag_observer** %15, align 8
  store %struct.diag_observer* %16, %struct.diag_observer** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.diag_observer*, %struct.diag_observer** %6, align 8
  %19 = getelementptr inbounds %struct.diag_observer, %struct.diag_observer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.diag_observer*, %struct.diag_observer** %6, align 8
  %25 = getelementptr inbounds %struct.diag_observer, %struct.diag_observer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %22, %13
  %30 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %31 = getelementptr inbounds %struct.diag_observer_list_elt, %struct.diag_observer_list_elt* %30, i32 0, i32 0
  %32 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %31, align 8
  store %struct.diag_observer_list_elt* %32, %struct.diag_observer_list_elt** %5, align 8
  br label %10

33:                                               ; preds = %28, %10
  %34 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %35 = icmp ne %struct.diag_observer_list_elt* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store %struct.diag_observer* null, %struct.diag_observer** %6, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.diag_observer*, %struct.diag_observer** %6, align 8
  ret %struct.diag_observer* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
