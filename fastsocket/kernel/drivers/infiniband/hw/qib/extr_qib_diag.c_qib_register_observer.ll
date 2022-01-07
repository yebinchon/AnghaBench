; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_register_observer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_register_observer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.diag_observer_list_elt* }
%struct.diag_observer_list_elt = type { %struct.diag_observer_list_elt*, %struct.diag_observer* }
%struct.diag_observer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"vmalloc for observer failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_register_observer(%struct.qib_devdata* %0, %struct.diag_observer* %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.diag_observer*, align 8
  %5 = alloca %struct.diag_observer_list_elt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store %struct.diag_observer* %1, %struct.diag_observer** %4, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %11 = icmp ne %struct.qib_devdata* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.diag_observer*, %struct.diag_observer** %4, align 8
  %14 = icmp ne %struct.diag_observer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %48

16:                                               ; preds = %12
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  %19 = call %struct.diag_observer_list_elt* @vmalloc(i32 16)
  store %struct.diag_observer_list_elt* %19, %struct.diag_observer_list_elt** %5, align 8
  %20 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %21 = icmp ne %struct.diag_observer_list_elt* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %48

24:                                               ; preds = %16
  %25 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %26 = icmp ne %struct.diag_observer_list_elt* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.diag_observer*, %struct.diag_observer** %4, align 8
  %33 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %34 = getelementptr inbounds %struct.diag_observer_list_elt, %struct.diag_observer_list_elt* %33, i32 0, i32 1
  store %struct.diag_observer* %32, %struct.diag_observer** %34, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 1
  %37 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %36, align 8
  %38 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %39 = getelementptr inbounds %struct.diag_observer_list_elt, %struct.diag_observer_list_elt* %38, i32 0, i32 0
  store %struct.diag_observer_list_elt* %37, %struct.diag_observer_list_elt** %39, align 8
  %40 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %5, align 8
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 1
  store %struct.diag_observer_list_elt* %40, %struct.diag_observer_list_elt** %42, align 8
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %27, %24
  br label %48

48:                                               ; preds = %47, %22, %15
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.diag_observer_list_elt* @vmalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
