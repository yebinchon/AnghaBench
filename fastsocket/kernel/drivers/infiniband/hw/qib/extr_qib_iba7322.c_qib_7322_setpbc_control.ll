; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_setpbc_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_setpbc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64, i64 }

@ib_rate_to_delay = common dso_local global i64* null, align 8
@PBC_7322_VL15_SEND_CTRL = common dso_local global i32 0, align 4
@PBC_VL_NUM_LSB = common dso_local global i64 0, align 8
@PBC_PORT_SEL_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i32, i64, i64)* @qib_7322_setpbc_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322_setpbc_control(%struct.qib_pportdata* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
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
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = ashr i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %9, align 8
  %28 = mul i64 %26, %27
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi i64 [ %28, %22 ], [ 0, %29 ]
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 15
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @PBC_7322_VL15_SEND_CTRL, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %47

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @PBC_VL_NUM_LSB, align 8
  %42 = shl i64 %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = or i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %39, %35
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @PBC_PORT_SEL_LSB, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
