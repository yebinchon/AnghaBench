; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i8* }
%struct.igb_adapter = type { i64, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@E1000_IPCNFG = common dso_local global i32 0, align 4
@E1000_EEER = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_1G_AN = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_100M_AN = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@E1000_EEE_LP_ADV_ADDR_I350 = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@E1000_EEE_LP_ADV_ADDR_I210 = common dso_local global i32 0, align 4
@E1000_EEE_LP_ADV_DEV_I210 = common dso_local global i32 0, align 4
@E1000_EEER_EEE_NEG = common dso_local global i32 0, align 4
@E1000_EEER_TX_LPI_EN = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @igb_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %6, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 1
  store %struct.e1000_hw* %15, %struct.e1000_hw** %7, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_media_type_copper, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %143

31:                                               ; preds = %21
  %32 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %33 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @E1000_IPCNFG, align 4
  %38 = call i32 @rd32(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @E1000_EEER, align 4
  %40 = call i32 @rd32(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %47 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %56 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %94 [
    i32 128, label %65
    i32 130, label %79
    i32 129, label %79
  ]

65:                                               ; preds = %60
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %67 = load i32, i32* @E1000_EEE_LP_ADV_ADDR_I350, align 4
  %68 = call i32 @igb_read_emi_reg(%struct.e1000_hw* %66, i32 %67, i32* %11)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENODATA, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %143

74:                                               ; preds = %65
  %75 = load i32, i32* %11, align 4
  %76 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %75)
  %77 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  br label %95

79:                                               ; preds = %60, %60
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %81 = load i32, i32* @E1000_EEE_LP_ADV_ADDR_I210, align 4
  %82 = load i32, i32* @E1000_EEE_LP_ADV_DEV_I210, align 4
  %83 = call i32 @igb_read_xmdio_reg(%struct.e1000_hw* %80, i32 %81, i32 %82, i32* %11)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @ENODATA, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %143

89:                                               ; preds = %79
  %90 = load i32, i32* %11, align 4
  %91 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %90)
  %92 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  br label %95

94:                                               ; preds = %60
  br label %95

95:                                               ; preds = %94, %89, %74
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @E1000_EEER_EEE_NEG, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @E1000_EEER_TX_LPI_EN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %103
  %122 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @HALF_DUPLEX, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %128, i32 0, i32 2
  store i32 0, i32* %129, align 8
  %130 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %133 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %132, i32 0, i32 3
  store i32 0, i32* %133, align 4
  %134 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = xor i32 %136, -1
  %138 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %139 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %127, %121
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %86, %71, %28
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_read_emi_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i8* @mmd_eee_adv_to_ethtool_adv_t(i32) #1

declare dso_local i32 @igb_read_xmdio_reg(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
