; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_modify_rx_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_modify_rx_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.ib_qp = type { i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.ib_qp_attr = type { i32, i32 }

@IB_QPS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to init QP attr for INIT: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to modify QP to INIT: %d\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to init QP attr for RTR: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to modify QP to RTR: %d\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to init QP attr for RTS: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to modify QP to RTS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ib_cm_id*, %struct.ib_qp*, i32)* @ipoib_cm_modify_rx_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_modify_rx_qp(%struct.net_device* %0, %struct.ib_cm_id* %1, %struct.ib_qp* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ib_cm_id*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipoib_dev_priv*, align 8
  %11 = alloca %struct.ib_qp_attr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.ib_cm_id* %1, %struct.ib_cm_id** %7, align 8
  store %struct.ib_qp* %2, %struct.ib_qp** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.ipoib_dev_priv* %15, %struct.ipoib_dev_priv** %10, align 8
  %16 = load i32, i32* @IB_QPS_INIT, align 4
  %17 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %11, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %19 = call i32 @ib_cm_init_qp_attr(%struct.ib_cm_id* %18, %struct.ib_qp_attr* %11, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %85

27:                                               ; preds = %4
  %28 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @ib_modify_qp(%struct.ib_qp* %28, %struct.ib_qp_attr* %11, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %85

38:                                               ; preds = %27
  %39 = load i32, i32* @IB_QPS_RTR, align 4
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %11, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %42 = call i32 @ib_cm_init_qp_attr(%struct.ib_cm_id* %41, %struct.ib_qp_attr* %11, i32* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %85

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %11, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @ib_modify_qp(%struct.ib_qp* %53, %struct.ib_qp_attr* %11, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %85

63:                                               ; preds = %50
  %64 = load i32, i32* @IB_QPS_RTS, align 4
  %65 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %67 = call i32 @ib_cm_init_qp_attr(%struct.ib_cm_id* %66, %struct.ib_qp_attr* %11, i32* %12)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  store i32 0, i32* %5, align 4
  br label %85

74:                                               ; preds = %63
  %75 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ib_modify_qp(%struct.ib_qp* %75, %struct.ib_qp_attr* %11, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %10, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  store i32 0, i32* %5, align 4
  br label %85

84:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %80, %70, %58, %45, %33, %22
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ib_cm_init_qp_attr(%struct.ib_cm_id*, %struct.ib_qp_attr*, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
