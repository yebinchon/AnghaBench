; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_setpbc_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_setpbc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ib_rate_to_delay = common dso_local global i64* null, align 8
@PBC_7220_VL15_SEND_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_pportdata*, i64, i64, i64)* @qib_7220_setpbc_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_7220_setpbc_control(%struct.qib_pportdata* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64*, i64** @ib_rate_to_delay, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %20 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %29, %30
  %32 = mul i64 %28, %31
  %33 = add i64 %32, 1
  %34 = lshr i64 %33, 1
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i64 [ %34, %27 ], [ 0, %35 ]
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 15
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i64, i64* @PBC_7220_VL15_SEND_CTRL, align 8
  %46 = load i64, i64* %11, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i64, i64* %11, align 8
  ret i64 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
