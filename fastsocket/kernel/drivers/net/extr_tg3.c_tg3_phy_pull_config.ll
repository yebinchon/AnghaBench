; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_pull_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_pull_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TG3_PHYFLG_ANY_SERDES = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000XHALF = common dso_local global i32 0, align 4
@ADVERTISE_1000XFULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_pull_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_pull_config(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = load i32, i32* @MII_BMCR, align 4
  %9 = call i32 @tg3_readphy(%struct.tg3* %7, i32 %8, i32* %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %198

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BMCR_ANENABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %95, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @AUTONEG_DISABLE, align 4
  %20 = load %struct.tg3*, %struct.tg3** %2, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.tg3*, %struct.tg3** %2, align 8
  %27 = load i32, i32* @PAUSE_AUTONEG, align 4
  %28 = call i32 @tg3_flag_clear(%struct.tg3* %26, i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 129
  switch i32 %32, label %72 [
    i32 0, label %33
    i32 129, label %46
    i32 128, label %59
  ]

33:                                               ; preds = %18
  %34 = load %struct.tg3*, %struct.tg3** %2, align 8
  %35 = getelementptr inbounds %struct.tg3, %struct.tg3* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %198

41:                                               ; preds = %33
  %42 = load i32, i32* @SPEED_10, align 4
  %43 = load %struct.tg3*, %struct.tg3** %2, align 8
  %44 = getelementptr inbounds %struct.tg3, %struct.tg3* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  br label %73

46:                                               ; preds = %18
  %47 = load %struct.tg3*, %struct.tg3** %2, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %198

54:                                               ; preds = %46
  %55 = load i32, i32* @SPEED_100, align 4
  %56 = load %struct.tg3*, %struct.tg3** %2, align 8
  %57 = getelementptr inbounds %struct.tg3, %struct.tg3* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  br label %73

59:                                               ; preds = %18
  %60 = load %struct.tg3*, %struct.tg3** %2, align 8
  %61 = getelementptr inbounds %struct.tg3, %struct.tg3* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @SPEED_1000, align 4
  %68 = load %struct.tg3*, %struct.tg3** %2, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 4
  br label %73

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %18, %71
  br label %198

73:                                               ; preds = %66, %54, %41
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @BMCR_FULLDPLX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @DUPLEX_FULL, align 4
  %80 = load %struct.tg3*, %struct.tg3** %2, align 8
  %81 = getelementptr inbounds %struct.tg3, %struct.tg3* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  br label %88

83:                                               ; preds = %73
  %84 = load i32, i32* @DUPLEX_HALF, align 4
  %85 = load %struct.tg3*, %struct.tg3** %2, align 8
  %86 = getelementptr inbounds %struct.tg3, %struct.tg3* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @FLOW_CTRL_RX, align 4
  %90 = load i32, i32* @FLOW_CTRL_TX, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.tg3*, %struct.tg3** %2, align 8
  %93 = getelementptr inbounds %struct.tg3, %struct.tg3* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  store i32 0, i32* %3, align 4
  br label %198

95:                                               ; preds = %13
  %96 = load i32, i32* @AUTONEG_ENABLE, align 4
  %97 = load %struct.tg3*, %struct.tg3** %2, align 8
  %98 = getelementptr inbounds %struct.tg3, %struct.tg3* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %101 = load %struct.tg3*, %struct.tg3** %2, align 8
  %102 = getelementptr inbounds %struct.tg3, %struct.tg3* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.tg3*, %struct.tg3** %2, align 8
  %105 = load i32, i32* @PAUSE_AUTONEG, align 4
  %106 = call i32 @tg3_flag_set(%struct.tg3* %104, i32 %105)
  %107 = load %struct.tg3*, %struct.tg3** %2, align 8
  %108 = getelementptr inbounds %struct.tg3, %struct.tg3* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %138, label %113

113:                                              ; preds = %95
  %114 = load %struct.tg3*, %struct.tg3** %2, align 8
  %115 = load i32, i32* @MII_ADVERTISE, align 4
  %116 = call i32 @tg3_readphy(%struct.tg3* %114, i32 %115, i32* %4)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %198

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @ADVERTISE_ALL, align 4
  %123 = and i32 %121, %122
  %124 = call i32 @mii_adv_to_ethtool_adv_t(i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ADVERTISED_TP, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.tg3*, %struct.tg3** %2, align 8
  %129 = getelementptr inbounds %struct.tg3, %struct.tg3* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %127
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @tg3_decode_flowctrl_1000T(i32 %133)
  %135 = load %struct.tg3*, %struct.tg3** %2, align 8
  %136 = getelementptr inbounds %struct.tg3, %struct.tg3* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  br label %145

138:                                              ; preds = %95
  %139 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %140 = load %struct.tg3*, %struct.tg3** %2, align 8
  %141 = getelementptr inbounds %struct.tg3, %struct.tg3* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %120
  %146 = load %struct.tg3*, %struct.tg3** %2, align 8
  %147 = getelementptr inbounds %struct.tg3, %struct.tg3* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %197, label %152

152:                                              ; preds = %145
  %153 = load %struct.tg3*, %struct.tg3** %2, align 8
  %154 = getelementptr inbounds %struct.tg3, %struct.tg3* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %152
  %160 = load %struct.tg3*, %struct.tg3** %2, align 8
  %161 = load i32, i32* @MII_CTRL1000, align 4
  %162 = call i32 @tg3_readphy(%struct.tg3* %160, i32 %161, i32* %4)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %198

166:                                              ; preds = %159
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @mii_ctrl1000_to_ethtool_adv_t(i32 %167)
  store i32 %168, i32* %6, align 4
  br label %190

169:                                              ; preds = %152
  %170 = load %struct.tg3*, %struct.tg3** %2, align 8
  %171 = load i32, i32* @MII_ADVERTISE, align 4
  %172 = call i32 @tg3_readphy(%struct.tg3* %170, i32 %171, i32* %4)
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %198

176:                                              ; preds = %169
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @tg3_decode_flowctrl_1000X(i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.tg3*, %struct.tg3** %2, align 8
  %181 = getelementptr inbounds %struct.tg3, %struct.tg3* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 4
  %183 = load i32, i32* @ADVERTISE_1000XHALF, align 4
  %184 = load i32, i32* @ADVERTISE_1000XFULL, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %4, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @mii_adv_to_ethtool_adv_x(i32 %188)
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %176, %166
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.tg3*, %struct.tg3** %2, align 8
  %193 = getelementptr inbounds %struct.tg3, %struct.tg3* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %191
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %190, %145
  br label %198

198:                                              ; preds = %197, %175, %165, %119, %88, %72, %53, %40, %12
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_flag_clear(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @mii_adv_to_ethtool_adv_t(i32) #1

declare dso_local i32 @tg3_decode_flowctrl_1000T(i32) #1

declare dso_local i32 @mii_ctrl1000_to_ethtool_adv_t(i32) #1

declare dso_local i32 @tg3_decode_flowctrl_1000X(i32) #1

declare dso_local i32 @mii_adv_to_ethtool_adv_x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
