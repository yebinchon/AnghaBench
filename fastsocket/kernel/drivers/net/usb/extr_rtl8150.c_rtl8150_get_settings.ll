; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@BMCR = common dso_local global i32 0, align 4
@ANLP = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i16 0, align 2
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i16 0, align 2
@LPA_100FULL = common dso_local global i16 0, align 2
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LPA_10FULL = common dso_local global i16 0, align 2
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i16 0, align 2
@BMCR_FULLDPLX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @rtl8150_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8150_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %11 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SUPPORTED_TP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SUPPORTED_MII, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @PORT_TP, align 4
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @XCVR_INTERNAL, align 4
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = load i32, i32* @BMCR, align 4
  %38 = call i32 @get_registers(%struct.TYPE_4__* %36, i32 %37, i32 2, i16* %7)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = load i32, i32* @ANLP, align 4
  %41 = call i32 @get_registers(%struct.TYPE_4__* %39, i32 %40, i32 2, i16* %6)
  %42 = load i16, i16* %7, align 2
  %43 = sext i16 %42 to i32
  %44 = load i16, i16* @BMCR_ANENABLE, align 2
  %45 = sext i16 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %2
  %49 = load i32, i32* @AUTONEG_ENABLE, align 4
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i16, i16* %6, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* @LPA_100HALF, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* @LPA_100FULL, align 2
  %57 = sext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i64, i64* @SPEED_100, align 8
  br label %65

63:                                               ; preds = %48
  %64 = load i64, i64* @SPEED_10, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SPEED_100, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %65
  %75 = load i16, i16* %6, align 2
  %76 = sext i16 %75 to i32
  %77 = load i16, i16* @LPA_100FULL, align 2
  %78 = sext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %85

83:                                               ; preds = %74
  %84 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  br label %104

89:                                               ; preds = %65
  %90 = load i16, i16* %6, align 2
  %91 = sext i16 %90 to i32
  %92 = load i16, i16* @LPA_10FULL, align 2
  %93 = sext i16 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %100

98:                                               ; preds = %89
  %99 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i8* [ %97, %96 ], [ %99, %98 ]
  %102 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %100, %85
  br label %137

105:                                              ; preds = %2
  %106 = load i32, i32* @AUTONEG_DISABLE, align 4
  %107 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %108 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load i16, i16* %7, align 2
  %110 = sext i16 %109 to i32
  %111 = load i16, i16* @BMCR_SPEED100, align 2
  %112 = sext i16 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i64, i64* @SPEED_100, align 8
  br label %119

117:                                              ; preds = %105
  %118 = load i64, i64* @SPEED_10, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  %121 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i16, i16* %7, align 2
  %124 = sext i16 %123 to i32
  %125 = load i16, i16* @BMCR_FULLDPLX, align 2
  %126 = sext i16 %125 to i32
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %133

131:                                              ; preds = %119
  %132 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i8* [ %130, %129 ], [ %132, %131 ]
  %135 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %136 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %133, %104
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_registers(%struct.TYPE_4__*, i32, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
