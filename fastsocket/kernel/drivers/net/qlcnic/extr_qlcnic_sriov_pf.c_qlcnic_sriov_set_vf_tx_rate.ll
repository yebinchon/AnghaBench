; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_tx_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i32 }
%struct.qlcnic_info = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Invalid Tx rate, allowed range is [%d - %d]\00", align 1
@QLC_VF_MIN_TX_RATE = common dso_local global i32 0, align 4
@QLC_VF_MAX_TX_RATE = common dso_local global i32 0, align 4
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Setting Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_set_vf_tx_rate(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_sriov*, align 8
  %10 = alloca %struct.qlcnic_vf_info*, align 8
  %11 = alloca %struct.qlcnic_info, align 4
  %12 = alloca %struct.qlcnic_vport*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %19, align 8
  store %struct.qlcnic_sriov* %20, %struct.qlcnic_sriov** %9, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %22 = call i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %105

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %30 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %105

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 10000
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 100
  br i1 %41, label %42, label %49

42:                                               ; preds = %39, %36
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i32, i32* @QLC_VF_MIN_TX_RATE, align 4
  %45 = load i32, i32* @QLC_VF_MAX_TX_RATE, align 4
  %46 = call i32 @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %105

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 10000, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %55 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %54, i32 0, i32 1
  %56 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %56, i64 %58
  store %struct.qlcnic_vf_info* %59, %struct.qlcnic_vf_info** %10, align 8
  %60 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %61 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %60, i32 0, i32 1
  %62 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %61, align 8
  store %struct.qlcnic_vport* %62, %struct.qlcnic_vport** %12, align 8
  %63 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %12, align 8
  %64 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %67 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %68 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %53
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter* %72, %struct.qlcnic_info* %11, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %105

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = sdiv i32 %80, 100
  %82 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %11, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @BIT_0, align 4
  %84 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %11, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter* %85, %struct.qlcnic_info* %11, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %105

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %53
  %94 = load i32, i32* %7, align 4
  %95 = sdiv i32 %94, 100
  %96 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %12, align 8
  %97 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %12, align 8
  %101 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @netdev_info(%struct.net_device* %98, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %102, i32 %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %93, %89, %76, %42, %33, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_sriov_get_vf_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i64 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
