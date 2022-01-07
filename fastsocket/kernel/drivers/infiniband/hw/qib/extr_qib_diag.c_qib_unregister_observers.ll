; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_unregister_observers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_unregister_observers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.diag_observer_list_elt* }
%struct.diag_observer_list_elt = type { %struct.diag_observer_list_elt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_unregister_observers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_unregister_observers(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.diag_observer_list_elt*, align 8
  %4 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 1
  %11 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %10, align 8
  store %struct.diag_observer_list_elt* %11, %struct.diag_observer_list_elt** %3, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %3, align 8
  %14 = icmp ne %struct.diag_observer_list_elt* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %3, align 8
  %17 = getelementptr inbounds %struct.diag_observer_list_elt, %struct.diag_observer_list_elt* %16, i32 0, i32 0
  %18 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %17, align 8
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 1
  store %struct.diag_observer_list_elt* %18, %struct.diag_observer_list_elt** %20, align 8
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %3, align 8
  %26 = call i32 @vfree(%struct.diag_observer_list_elt* %25)
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 1
  %33 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %32, align 8
  store %struct.diag_observer_list_elt* %33, %struct.diag_observer_list_elt** %3, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 0
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vfree(%struct.diag_observer_list_elt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
