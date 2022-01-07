; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_init_phy_ops_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_init_phy_ops_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.ixgbe_phy_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)*, i32*, i32*, i32*, i32*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.2*)*, i32*, i32* }
%struct.ixgbe_hw.2 = type opaque

@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@ixgbe_setup_copper_link_82598 = common dso_local global i32 0, align 4
@ixgbe_get_copper_link_capabilities_generic = common dso_local global i32 0, align 4
@ixgbe_setup_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_check_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_get_phy_firmware_version_tnx = common dso_local global i32 0, align 4
@ixgbe_reset_phy_nl = common dso_local global i32 0, align 4
@ixgbe_sfp_type_unknown = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_init_phy_ops_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_init_phy_ops_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  store %struct.ixgbe_mac_info* %9, %struct.ixgbe_mac_info** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  store %struct.ixgbe_phy_info* %11, %struct.ixgbe_phy_info** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.1*
  %18 = call i32 %15(%struct.ixgbe_hw.1* %17)
  %19 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (%struct.ixgbe_hw.2*)*, i64 (%struct.ixgbe_hw.2*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.2*
  %25 = call i64 %22(%struct.ixgbe_hw.2* %24)
  %26 = load i64, i64* @ixgbe_media_type_copper, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32* @ixgbe_setup_copper_link_82598, i32** %31, align 8
  %32 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32* @ixgbe_get_copper_link_capabilities_generic, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %82 [
    i32 128, label %40
    i32 129, label %50
  ]

40:                                               ; preds = %35
  %41 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i32* @ixgbe_setup_phy_link_tnx, i32** %43, align 8
  %44 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32* @ixgbe_check_phy_link_tnx, i32** %46, align 8
  %47 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32* @ixgbe_get_phy_firmware_version_tnx, i32** %49, align 8
  br label %83

50:                                               ; preds = %35
  %51 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32* @ixgbe_reset_phy_nl, i32** %53, align 8
  %54 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.0*
  %60 = call i32 %57(%struct.ixgbe_hw.0* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %84

64:                                               ; preds = %50
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ixgbe_sfp_type_unknown, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %72, i32* %5, align 4
  br label %84

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %76 = call i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %75, i32* %6, i32* %7)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %80, i32* %5, align 4
  br label %84

81:                                               ; preds = %74
  br label %83

82:                                               ; preds = %35
  br label %83

83:                                               ; preds = %82, %81, %40
  br label %84

84:                                               ; preds = %83, %79, %71, %63
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
