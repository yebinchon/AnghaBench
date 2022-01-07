; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_init_mac_link_ops_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_init_mac_link_ops_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__, i32, %struct.ixgbe_mac_info }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*)*, i32*, i32*, i32*, i32* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@ixgbe_disable_tx_laser_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_enable_tx_laser_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_flap_tx_laser_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_multispeed_fiber = common dso_local global i32 0, align 4
@ixgbe_media_type_backplane = common dso_local global i64 0, align 8
@ixgbe_smart_speed_auto = common dso_local global i64 0, align 8
@ixgbe_smart_speed_on = common dso_local global i64 0, align 8
@ixgbe_setup_mac_link_smartspeed = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_82599 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_init_mac_link_ops_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 2
  store %struct.ixgbe_mac_info* %5, %struct.ixgbe_mac_info** %3, align 8
  %6 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %8, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = bitcast %struct.ixgbe_hw* %10 to %struct.ixgbe_hw.0*
  %12 = call i64 %9(%struct.ixgbe_hw.0* %11)
  %13 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32* @ixgbe_disable_tx_laser_multispeed_fiber, i32** %23, align 8
  %24 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32* @ixgbe_enable_tx_laser_multispeed_fiber, i32** %26, align 8
  %27 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32* @ixgbe_flap_tx_laser_multispeed_fiber, i32** %29, align 8
  br label %40

30:                                               ; preds = %15, %1
  %31 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %30, %20
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32* @ixgbe_setup_mac_link_multispeed_fiber, i32** %49, align 8
  br label %87

50:                                               ; preds = %40
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %53, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %56 = bitcast %struct.ixgbe_hw* %55 to %struct.ixgbe_hw.0*
  %57 = call i64 %54(%struct.ixgbe_hw.0* %56)
  %58 = load i64, i64* @ixgbe_media_type_backplane, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %50
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ixgbe_smart_speed_auto, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ixgbe_smart_speed_on, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %67, %60
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %76 = call i32 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32* @ixgbe_setup_mac_link_smartspeed, i32** %81, align 8
  br label %86

82:                                               ; preds = %74, %67, %50
  %83 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32* @ixgbe_setup_mac_link_82599, i32** %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %46
  ret void
}

declare dso_local i32 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
