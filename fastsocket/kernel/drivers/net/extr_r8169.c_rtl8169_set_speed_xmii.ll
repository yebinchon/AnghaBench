; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_set_speed_xmii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_set_speed_xmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PHY does not support 1000Mbps\0A\00", align 1
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_02 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_03 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i64, i64, i32)* @rtl8169_set_speed_xmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_set_speed_xmii(%struct.net_device* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl8169_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %16)
  store %struct.rtl8169_private* %17, %struct.rtl8169_private** %11, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %21 = call i32 @rtl_writephy(%struct.rtl8169_private* %20, i32 31, i32 0)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @AUTONEG_ENABLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %138

25:                                               ; preds = %5
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %27 = load i32, i32* @MII_ADVERTISE, align 4
  %28 = call i32 @rtl_readphy(%struct.rtl8169_private* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* @ADVERTISE_10HALF, align 4
  %30 = load i32, i32* @ADVERTISE_10FULL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ADVERTISE_100HALF, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ADVERTISE_100FULL, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %15, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %25
  %44 = load i32, i32* @ADVERTISE_10HALF, align 4
  %45 = load i32, i32* %15, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %43, %25
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @ADVERTISE_10FULL, align 4
  %54 = load i32, i32* %15, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @ADVERTISE_100HALF, align 4
  %63 = load i32, i32* %15, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @ADVERTISE_100FULL, align 4
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %76 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %15, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %15, align 4
  %80 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %81 = load i32, i32* @MII_CTRL1000, align 4
  %82 = call i32 @rtl_readphy(%struct.rtl8169_private* %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %84 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %90 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %74
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %108, %103
  br label %126

113:                                              ; preds = %74
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %116 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %122 = load i32, i32* @link, align 4
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = call i32 @netif_info(%struct.rtl8169_private* %121, i32 %122, %struct.net_device* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %196

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %112
  %127 = load i32, i32* @BMCR_ANENABLE, align 4
  %128 = load i32, i32* @BMCR_ANRESTART, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %13, align 4
  %130 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %131 = load i32, i32* @MII_ADVERTISE, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @rtl_writephy(%struct.rtl8169_private* %130, i32 %131, i32 %132)
  %134 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %135 = load i32, i32* @MII_CTRL1000, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @rtl_writephy(%struct.rtl8169_private* %134, i32 %135, i32 %136)
  br label %160

138:                                              ; preds = %5
  store i32 0, i32* %12, align 4
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @SPEED_10, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 0, i32* %13, align 4
  br label %151

143:                                              ; preds = %138
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* @SPEED_100, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @BMCR_SPEED100, align 4
  store i32 %148, i32* %13, align 4
  br label %150

149:                                              ; preds = %143
  br label %196

150:                                              ; preds = %147
  br label %151

151:                                              ; preds = %150, %142
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* @DUPLEX_FULL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* @BMCR_FULLDPLX, align 4
  %157 = load i32, i32* %13, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %155, %151
  br label %160

160:                                              ; preds = %159, %126
  %161 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %162 = load i32, i32* @MII_BMCR, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @rtl_writephy(%struct.rtl8169_private* %161, i32 %162, i32 %163)
  %165 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %166 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RTL_GIGA_MAC_VER_02, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %160
  %171 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %172 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @RTL_GIGA_MAC_VER_03, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %170, %160
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* @SPEED_100, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* @AUTONEG_ENABLE, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %186 = call i32 @rtl_writephy(%struct.rtl8169_private* %185, i32 23, i32 8504)
  %187 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %188 = call i32 @rtl_writephy(%struct.rtl8169_private* %187, i32 14, i32 608)
  br label %194

189:                                              ; preds = %180, %176
  %190 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %191 = call i32 @rtl_writephy(%struct.rtl8169_private* %190, i32 23, i32 8456)
  %192 = load %struct.rtl8169_private*, %struct.rtl8169_private** %11, align 8
  %193 = call i32 @rtl_writephy(%struct.rtl8169_private* %192, i32 14, i32 0)
  br label %194

194:                                              ; preds = %189, %184
  br label %195

195:                                              ; preds = %194, %170
  store i32 0, i32* %14, align 4
  br label %196

196:                                              ; preds = %195, %149, %120
  %197 = load i32, i32* %14, align 4
  ret i32 %197
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @netif_info(%struct.rtl8169_private*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
