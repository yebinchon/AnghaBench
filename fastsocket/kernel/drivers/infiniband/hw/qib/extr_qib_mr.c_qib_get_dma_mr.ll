; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.qib_mr = type { %struct.TYPE_6__, %struct.ib_mr }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @qib_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_mr*, align 8
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.qib_mr* null, %struct.qib_mr** %5, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %9 = call %struct.TYPE_5__* @to_ipd(%struct.ib_pd* %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.ib_mr* @ERR_PTR(i32 %15)
  store %struct.ib_mr* %16, %struct.ib_mr** %6, align 8
  br label %58

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.qib_mr* @kzalloc(i32 8, i32 %18)
  store %struct.qib_mr* %19, %struct.qib_mr** %5, align 8
  %20 = load %struct.qib_mr*, %struct.qib_mr** %5, align 8
  %21 = icmp ne %struct.qib_mr* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ib_mr* @ERR_PTR(i32 %24)
  store %struct.ib_mr* %25, %struct.ib_mr** %6, align 8
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.qib_mr*, %struct.qib_mr** %5, align 8
  %28 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %27, i32 0, i32 0
  %29 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %30 = call i32 @init_qib_mregion(%struct.TYPE_6__* %28, %struct.ib_pd* %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.ib_mr* @ERR_PTR(i32 %34)
  store %struct.ib_mr* %35, %struct.ib_mr** %6, align 8
  br label %58

36:                                               ; preds = %26
  %37 = load %struct.qib_mr*, %struct.qib_mr** %5, align 8
  %38 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %37, i32 0, i32 0
  %39 = call i32 @qib_alloc_lkey(%struct.TYPE_6__* %38, i32 1)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.ib_mr* @ERR_PTR(i32 %43)
  store %struct.ib_mr* %44, %struct.ib_mr** %6, align 8
  br label %54

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.qib_mr*, %struct.qib_mr** %5, align 8
  %48 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.qib_mr*, %struct.qib_mr** %5, align 8
  %51 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %50, i32 0, i32 1
  store %struct.ib_mr* %51, %struct.ib_mr** %6, align 8
  br label %52

52:                                               ; preds = %58, %45
  %53 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  ret %struct.ib_mr* %53

54:                                               ; preds = %42
  %55 = load %struct.qib_mr*, %struct.qib_mr** %5, align 8
  %56 = getelementptr inbounds %struct.qib_mr, %struct.qib_mr* %55, i32 0, i32 0
  %57 = call i32 @deinit_qib_mregion(%struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %54, %33, %22, %13
  %59 = load %struct.qib_mr*, %struct.qib_mr** %5, align 8
  %60 = call i32 @kfree(%struct.qib_mr* %59)
  br label %52
}

declare dso_local %struct.TYPE_5__* @to_ipd(%struct.ib_pd*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.qib_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @init_qib_mregion(%struct.TYPE_6__*, %struct.ib_pd*, i32) #1

declare dso_local i32 @qib_alloc_lkey(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @deinit_qib_mregion(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.qib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
