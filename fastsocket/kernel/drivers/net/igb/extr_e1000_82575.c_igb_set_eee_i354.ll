; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_eee_i354.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_eee_i354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_phy_info }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@e1000_media_type_copper = common dso_local global i64 0, align 8
@M88E1543_E_PHY_ID = common dso_local global i64 0, align 8
@E1000_M88E1543_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1543_EEE_CTRL_1 = common dso_local global i32 0, align 4
@E1000_M88E1543_EEE_CTRL_1_MS = common dso_local global i32 0, align 4
@E1000_EEE_ADV_ADDR_I354 = common dso_local global i32 0, align 4
@E1000_EEE_ADV_DEV_I354 = common dso_local global i32 0, align 4
@E1000_EEE_ADV_100_SUPPORTED = common dso_local global i32 0, align 4
@E1000_EEE_ADV_1000_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_set_eee_i354(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_media_type_copper, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @M88E1543_E_PHY_ID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  br label %120

21:                                               ; preds = %14
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %99, label %28

28:                                               ; preds = %21
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.0*
  %35 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %36 = call i64 %32(%struct.e1000_hw.0* %34, i32 %35, i32 18)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %120

40:                                               ; preds = %28
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = bitcast %struct.e1000_hw* %45 to %struct.e1000_hw.1*
  %47 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1, align 4
  %48 = call i64 %44(%struct.e1000_hw.1* %46, i32 %47, i32* %5)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %120

52:                                               ; preds = %40
  %53 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1_MS, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.0*
  %62 = load i32, i32* @E1000_M88E1543_EEE_CTRL_1, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 %59(%struct.e1000_hw.0* %61, i32 %62, i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %120

68:                                               ; preds = %52
  %69 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %71, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = bitcast %struct.e1000_hw* %73 to %struct.e1000_hw.0*
  %75 = load i32, i32* @E1000_M88E1543_PAGE_ADDR, align 4
  %76 = call i64 %72(%struct.e1000_hw.0* %74, i32 %75, i32 0)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %120

80:                                               ; preds = %68
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %83 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %84 = call i64 @igb_read_xmdio_reg(%struct.e1000_hw* %81, i32 %82, i32 %83, i32* %5)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %120

88:                                               ; preds = %80
  %89 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %90 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %96 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @igb_write_xmdio_reg(%struct.e1000_hw* %94, i32 %95, i32 %96, i32 %97)
  store i64 %98, i64* %4, align 8
  br label %119

99:                                               ; preds = %21
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %101 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %102 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %103 = call i64 @igb_read_xmdio_reg(%struct.e1000_hw* %100, i32 %101, i32 %102, i32* %5)
  store i64 %103, i64* %4, align 8
  %104 = load i64, i64* %4, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %120

107:                                              ; preds = %99
  %108 = load i32, i32* @E1000_EEE_ADV_100_SUPPORTED, align 4
  %109 = load i32, i32* @E1000_EEE_ADV_1000_SUPPORTED, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = load i32, i32* @E1000_EEE_ADV_ADDR_I354, align 4
  %116 = load i32, i32* @E1000_EEE_ADV_DEV_I354, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @igb_write_xmdio_reg(%struct.e1000_hw* %114, i32 %115, i32 %116, i32 %117)
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %107, %88
  br label %120

120:                                              ; preds = %119, %106, %87, %79, %67, %51, %39, %20
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i64 @igb_read_xmdio_reg(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @igb_write_xmdio_reg(%struct.e1000_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
