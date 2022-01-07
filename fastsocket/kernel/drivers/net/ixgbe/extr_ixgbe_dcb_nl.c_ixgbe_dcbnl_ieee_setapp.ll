; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_setapp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i64, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.vf_data_storage*, %struct.TYPE_2__ }
%struct.vf_data_storage = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@IEEE_8021QAZ_APP_SEL_ETHERTYPE = common dso_local global i64 0, align 8
@ETH_P_FCOE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @ixgbe_dcbnl_ieee_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_ieee_setapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vf_data_storage*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %25 = call i32 @dcb_ieee_setapp(%struct.net_device* %23, %struct.dcb_app* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %80

30:                                               ; preds = %22
  %31 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %32 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE_8021QAZ_APP_SEL_ETHERTYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %30
  %37 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %38 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %36
  %42 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %43 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %75, %41
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %47
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 3
  %56 = load %struct.vf_data_storage*, %struct.vf_data_storage** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %56, i64 %58
  store %struct.vf_data_storage* %59, %struct.vf_data_storage** %9, align 8
  %60 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %61 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %53
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %66 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %67 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %70 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %65, i32 %68, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %53
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %47

78:                                               ; preds = %47
  br label %79

79:                                               ; preds = %78, %36, %30
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %28, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dcb_ieee_setapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
