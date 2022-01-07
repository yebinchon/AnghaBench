; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_init_phy_ops_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_init_phy_ops_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.ixgbe_phy_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32 (%struct.ixgbe_hw.0*)*, i32*, i32* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_mac_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.1*)*, i32*, i32* }
%struct.ixgbe_hw.1 = type opaque

@IXGBE_DEV_ID_82599_QSFP_SF_QP = common dso_local global i64 0, align 8
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP1_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0 = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_NATIVE = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP1_NATIVE = common dso_local global i32 0, align 4
@ixgbe_read_i2c_byte_82599 = common dso_local global i32 0, align 4
@ixgbe_write_i2c_byte_82599 = common dso_local global i32 0, align 4
@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@ixgbe_setup_copper_link_82599 = common dso_local global i32 0, align 4
@ixgbe_get_copper_link_capabilities_generic = common dso_local global i32 0, align 4
@ixgbe_check_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_setup_phy_link_tnx = common dso_local global i32 0, align 4
@ixgbe_get_phy_firmware_version_tnx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_init_phy_ops_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_init_phy_ops_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 2
  store %struct.ixgbe_mac_info* %8, %struct.ixgbe_mac_info** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  store %struct.ixgbe_phy_info* %10, %struct.ixgbe_phy_info** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IXGBE_DEV_ID_82599_QSFP_SF_QP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* @IXGBE_ESDP, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @IXGBE_ESDP_SDP0_DIR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @IXGBE_ESDP_SDP1_DIR, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @IXGBE_ESDP_SDP0, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @IXGBE_ESDP_SDP0_NATIVE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @IXGBE_ESDP_SDP1_NATIVE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = load i32, i32* @IXGBE_ESDP, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %43, i32 %44)
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %46)
  %48 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32* @ixgbe_read_i2c_byte_82599, i32** %50, align 8
  %51 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i32* @ixgbe_write_i2c_byte_82599, i32** %53, align 8
  br label %54

54:                                               ; preds = %16, %1
  %55 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.0*
  %61 = call i32 %58(%struct.ixgbe_hw.0* %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %63 = call i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %62)
  %64 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %66, align 8
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = bitcast %struct.ixgbe_hw* %68 to %struct.ixgbe_hw.1*
  %70 = call i64 %67(%struct.ixgbe_hw.1* %69)
  %71 = load i64, i64* @ixgbe_media_type_copper, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %54
  %74 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32* @ixgbe_setup_copper_link_82599, i32** %76, align 8
  %77 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32* @ixgbe_get_copper_link_capabilities_generic, i32** %79, align 8
  br label %80

80:                                               ; preds = %73, %54
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %95 [
    i32 128, label %85
  ]

85:                                               ; preds = %80
  %86 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %87 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32* @ixgbe_check_phy_link_tnx, i32** %88, align 8
  %89 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %90 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32* @ixgbe_setup_phy_link_tnx, i32** %91, align 8
  %92 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %93 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32* @ixgbe_get_phy_firmware_version_tnx, i32** %94, align 8
  br label %96

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %85
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
