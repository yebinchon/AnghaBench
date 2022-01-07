; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_get_vf_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_get_vf_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_2__*, i32, %struct.ixgbe_ring_feature*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.ixgbe_ring_feature = type { i32 }
%struct.net_device = type { i32 }

@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_VF_TX_QUEUES = common dso_local global i64 0, align 8
@IXGBE_VF_RX_QUEUES = common dso_local global i64 0, align 8
@IXGBE_VF_TRANS_VLAN = common dso_local global i64 0, align 8
@IXGBE_VF_DEF_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_get_vf_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_vf_queues(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ixgbe_ring_feature*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 2
  %17 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %16, align 8
  %18 = load i64, i64* @RING_F_VMDQ, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %17, i64 %18
  store %struct.ixgbe_ring_feature* %19, %struct.ixgbe_ring_feature** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call i32 @netdev_get_num_tc(%struct.net_device* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %30 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %3, %3
  br label %31

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %98

31:                                               ; preds = %29
  %32 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %9, align 8
  %33 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = call i64 @__ALIGN_MASK(i32 1, i32 %35)
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* @IXGBE_VF_TX_QUEUES, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %9, align 8
  %41 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, -1
  %44 = call i64 @__ALIGN_MASK(i32 1, i32 %43)
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* @IXGBE_VF_RX_QUEUES, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %31
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %51, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %50, %31
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* @IXGBE_VF_TRANS_VLAN, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  br label %92

65:                                               ; preds = %56
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %76 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74, %65
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* @IXGBE_VF_TRANS_VLAN, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 1, i64* %86, align 8
  br label %91

87:                                               ; preds = %74
  %88 = load i64*, i64** %6, align 8
  %89 = load i64, i64* @IXGBE_VF_TRANS_VLAN, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %59
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64*, i64** %6, align 8
  %96 = load i64, i64* @IXGBE_VF_DEF_QUEUE, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %94, i64* %97, align 8
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %30
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local i64 @__ALIGN_MASK(i32, i32) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
