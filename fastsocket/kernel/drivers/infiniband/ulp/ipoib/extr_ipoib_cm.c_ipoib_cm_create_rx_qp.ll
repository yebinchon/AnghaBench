; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_create_rx_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_create_rx_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.net_device = type { i32 }
%struct.ipoib_cm_rx = type { i32 }
%struct.ipoib_dev_priv = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_4__, %struct.ipoib_cm_rx*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@ipoib_cm_rx_event_handler = common dso_local global i32 0, align 4
@ipoib_recvq_size = common dso_local global i32 0, align 4
@IPOIB_CM_RX_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.net_device*, %struct.ipoib_cm_rx*)* @ipoib_cm_create_rx_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @ipoib_cm_create_rx_qp(%struct.net_device* %0, %struct.ipoib_cm_rx* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_cm_rx*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ib_qp_init_attr, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ipoib_cm_rx* %1, %struct.ipoib_cm_rx** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %5, align 8
  %9 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  %15 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %4, align 8
  store %struct.ipoib_cm_rx* %15, %struct.ipoib_cm_rx** %14, align 8
  %16 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 2
  %17 = load i32, i32* @IB_QPT_RC, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 3
  %19 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %20, align 8
  %25 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 5
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 6
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 8
  %33 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 7
  %34 = load i32, i32* @ipoib_cm_rx_event_handler, align 4
  store i32 %34, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @ipoib_cm_has_srq(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ipoib_recvq_size, align 4
  %40 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @IPOIB_CM_RX_SG, align 4
  %43 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %38, %2
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.ib_qp* @ib_create_qp(i32 %48, %struct.ib_qp_init_attr* %6)
  ret %struct.ib_qp* %49
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_cm_has_srq(%struct.net_device*) #1

declare dso_local %struct.ib_qp* @ib_create_qp(i32, %struct.ib_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
