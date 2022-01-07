; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_reset_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_reset_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.vf_data_storage*, i32, i64, %struct.ixgbe_hw }
%struct.vf_data_storage = type { i32, i64, i32, i64 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_mbox_api_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i64)* @ixgbe_vf_reset_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_vf_reset_event(%struct.ixgbe_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.vf_data_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 3
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %5, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  %13 = load %struct.vf_data_storage*, %struct.vf_data_storage** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %13, i64 %14
  store %struct.vf_data_storage* %15, %struct.vf_data_storage** %6, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  %22 = sub i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netdev_get_num_tc(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %29 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %30 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %28, i32 1, i32 %31, i64 %32)
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %37 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @ixgbe_set_vmolr(%struct.ixgbe_hw* %34, i64 %35, i32 %41)
  %43 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %44 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %2
  %48 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %49 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @ixgbe_clear_vmvir(%struct.ixgbe_adapter* %56, i64 %57)
  br label %88

59:                                               ; preds = %52, %47, %2
  %60 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %61 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %69 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %70 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %73 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %68, i32 %71, i64 %74, i64 %75)
  br label %87

77:                                               ; preds = %64
  %78 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %79 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %80 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %78, i32 %81, i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %77, %67
  br label %88

88:                                               ; preds = %87, %55
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %89, i32 0, i32 0
  %91 = load %struct.vf_data_storage*, %struct.vf_data_storage** %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %91, i64 %92
  %94 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ixgbe_set_rx_mode(i32 %97)
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.0*
  %106 = load i32, i32* %7, align 4
  %107 = call i32 %103(%struct.ixgbe_hw.0* %105, i32 %106)
  %108 = load i32, i32* @ixgbe_mbox_api_10, align 4
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 0
  %111 = load %struct.vf_data_storage*, %struct.vf_data_storage** %110, align 8
  %112 = load i64, i64* %4, align 8
  %113 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %111, i64 %112
  %114 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %113, i32 0, i32 0
  store i32 %108, i32* %114, align 8
  ret void
}

declare dso_local i32 @netdev_get_num_tc(i32) #1

declare dso_local i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter*, i32, i32, i64) #1

declare dso_local i32 @ixgbe_set_vmolr(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i32 @ixgbe_clear_vmvir(%struct.ixgbe_adapter*, i64) #1

declare dso_local i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter*, i32, i64, i64) #1

declare dso_local i32 @ixgbe_set_rx_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
