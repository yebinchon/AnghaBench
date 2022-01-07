; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_delapp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_delapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i64, i64 }
%struct.ixgbe_adapter = type { i32, i64, i32, %struct.vf_data_storage*, %struct.TYPE_2__ }
%struct.vf_data_storage = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE_8021QAZ_APP_SEL_ETHERTYPE = common dso_local global i64 0, align 8
@ETH_P_FCOE = common dso_local global i64 0, align 8
@IXGBE_FCOE_DEFTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @ixgbe_dcbnl_ieee_delapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_ieee_delapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vf_data_storage*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbe_adapter* %13, %struct.ixgbe_adapter** %6, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %93

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %26 = call i32 @dcb_ieee_delapp(%struct.net_device* %24, %struct.dcb_app* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %28 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE_8021QAZ_APP_SEL_ETHERTYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %23
  %33 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %34 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %32
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %42 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %48 = call i8* @dcb_ieee_getapp_mask(%struct.net_device* %46, %struct.dcb_app* %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @find_first_bit(i64* %9, i32 8)
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %87, %55
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 3
  %70 = load %struct.vf_data_storage*, %struct.vf_data_storage** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %70, i64 %72
  store %struct.vf_data_storage* %73, %struct.vf_data_storage** %11, align 8
  %74 = load %struct.vf_data_storage*, %struct.vf_data_storage** %11, align 8
  %75 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %67
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %80 = load %struct.vf_data_storage*, %struct.vf_data_storage** %11, align 8
  %81 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %79, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %67
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %61

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %90, %37, %32, %23
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dcb_ieee_delapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i8* @dcb_ieee_getapp_mask(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
