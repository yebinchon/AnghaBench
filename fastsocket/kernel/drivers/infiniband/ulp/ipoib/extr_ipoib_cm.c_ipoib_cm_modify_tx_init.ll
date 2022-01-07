; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_modify_tx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_modify_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.ib_qp = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"pkey 0x%x not found: %d\0A\00", align 1
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to modify tx QP to INIT: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ib_cm_id*, %struct.ib_qp*)* @ipoib_cm_modify_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_modify_tx_init(%struct.net_device* %0, %struct.ib_cm_id* %1, %struct.ib_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca %struct.ib_qp_attr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ib_cm_id* %1, %struct.ib_cm_id** %6, align 8
  store %struct.ib_qp* %2, %struct.ib_qp** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ipoib_dev_priv* %13, %struct.ipoib_dev_priv** %8, align 8
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 3
  %24 = call i32 @ib_find_pkey(i32 %16, i32 %19, i32 %22, i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %30 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %62

35:                                               ; preds = %3
  %36 = load i32, i32* @IB_QPS_INIT, align 4
  %37 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %39 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %41 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IB_QP_STATE, align 4
  %45 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @IB_QP_PORT, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ib_modify_qp(%struct.ib_qp* %51, %struct.ib_qp_attr* %9, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %35
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %56, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
