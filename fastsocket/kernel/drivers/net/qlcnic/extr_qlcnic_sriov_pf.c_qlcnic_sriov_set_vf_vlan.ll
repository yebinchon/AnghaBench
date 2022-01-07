; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_VLAN_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Invalid VLAN ID, allowed range is [0 - %d]\0A\00", align 1
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [103 x i8] c"VLAN change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\0A\00", align 1
@QLC_GUEST_VLAN_MODE = common dso_local global i32 0, align 4
@QLC_NO_VLAN_MODE = common dso_local global i32 0, align 4
@QLC_PVID_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Setting VLAN %d, QoS %d, for VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_adapter*, align 8
  %11 = alloca %struct.qlcnic_sriov*, align 8
  %12 = alloca %struct.qlcnic_vf_info*, align 8
  %13 = alloca %struct.qlcnic_vport*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %10, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %19, align 8
  store %struct.qlcnic_sriov* %20, %struct.qlcnic_sriov** %11, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %22 = call i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %100

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %11, align 8
  %30 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 7
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %100

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MAX_VLAN_ID, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load i32, i32* @MAX_VLAN_ID, align 4
  %46 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %100

49:                                               ; preds = %39
  %50 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %11, align 8
  %51 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %50, i32 0, i32 1
  %52 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %52, i64 %54
  store %struct.qlcnic_vf_info* %55, %struct.qlcnic_vf_info** %12, align 8
  %56 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  %57 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %56, i32 0, i32 1
  %58 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %57, align 8
  store %struct.qlcnic_vport* %58, %struct.qlcnic_vport** %13, align 8
  %59 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %60 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  %61 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %60, i32 0, i32 0
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @netdev_err(%struct.net_device* %65, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %100

70:                                               ; preds = %49
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %84 [
    i32 4095, label %72
    i32 0, label %76
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* @QLC_GUEST_VLAN_MODE, align 4
  %74 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  %75 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %94

76:                                               ; preds = %70
  %77 = load i32, i32* @QLC_NO_VLAN_MODE, align 4
  %78 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  %79 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  %81 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  %83 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %94

84:                                               ; preds = %70
  %85 = load i32, i32* @QLC_PVID_MODE, align 4
  %86 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  %87 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  %90 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %13, align 8
  %93 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %84, %76, %72
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @netdev_info(%struct.net_device* %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %94, %64, %43, %36, %24
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
