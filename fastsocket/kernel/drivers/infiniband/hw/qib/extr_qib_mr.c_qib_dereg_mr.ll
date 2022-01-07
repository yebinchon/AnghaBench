; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.qib_mr = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca %struct.ib_mr*, align 8
  %3 = alloca %struct.qib_mr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %2, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %7 = call %struct.qib_mr* @to_imr(%struct.ib_mr* %6)
  store %struct.qib_mr* %7, %struct.qib_mr** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %9 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %8, i32 0, i32 1
  %10 = call i32 @qib_free_lkey(%struct.TYPE_5__* %9)
  %11 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %12 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %11, i32 0, i32 1
  %13 = call i32 @qib_put_mr(%struct.TYPE_5__* %12)
  %14 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %15 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 5, %17
  %19 = call i64 @wait_for_completion_timeout(i32* %16, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %24 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %23, i32 0, i32 1
  %25 = call i32 @qib_get_mr(%struct.TYPE_5__* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %30 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %29, i32 0, i32 1
  %31 = call i32 @deinit_qib_mregion(%struct.TYPE_5__* %30)
  %32 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %33 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %38 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ib_umem_release(i64 %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.qib_mr*, %struct.qib_mr** %3, align 8
  %43 = call i32 @kfree(%struct.qib_mr* %42)
  br label %44

44:                                               ; preds = %41, %22
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.qib_mr* @to_imr(%struct.ib_mr*) #1

declare dso_local i32 @qib_free_lkey(%struct.TYPE_5__*) #1

declare dso_local i32 @qib_put_mr(%struct.TYPE_5__*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @qib_get_mr(%struct.TYPE_5__*) #1

declare dso_local i32 @deinit_qib_mregion(%struct.TYPE_5__*) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @kfree(%struct.qib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
