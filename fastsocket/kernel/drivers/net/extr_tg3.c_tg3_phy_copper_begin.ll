; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_copper_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_copper_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@TG3_PHYFLG_IS_LOW_POWER = common dso_local global i32 0, align 4
@TG3_PHYFLG_KEEP_LINK_ON_PWRDN = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@WOL_SPEED_100MB = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@TG3_PHYFLG_1G_ON_VAUX_OK = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@ASIC_REV_5714 = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_phy_copper_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_copper_begin(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AUTONEG_ENABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.tg3*, %struct.tg3** %2, align 8
  %17 = getelementptr inbounds %struct.tg3, %struct.tg3* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %116

22:                                               ; preds = %15, %1
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = load %struct.tg3*, %struct.tg3** %2, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %38 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %3, align 4
  %40 = load %struct.tg3*, %struct.tg3** %2, align 8
  %41 = load i32, i32* @WOL_SPEED_100MB, align 4
  %42 = call i64 @tg3_flag(%struct.tg3* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %46 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.tg3*, %struct.tg3** %2, align 8
  %52 = getelementptr inbounds %struct.tg3, %struct.tg3* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TG3_PHYFLG_1G_ON_VAUX_OK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %59 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load i32, i32* @FLOW_CTRL_TX, align 4
  %65 = load i32, i32* @FLOW_CTRL_RX, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %4, align 4
  br label %90

67:                                               ; preds = %29, %22
  %68 = load %struct.tg3*, %struct.tg3** %2, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %3, align 4
  %72 = load %struct.tg3*, %struct.tg3** %2, align 8
  %73 = getelementptr inbounds %struct.tg3, %struct.tg3* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %80 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %67
  %86 = load %struct.tg3*, %struct.tg3** %2, align 8
  %87 = getelementptr inbounds %struct.tg3, %struct.tg3* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %63
  %91 = load %struct.tg3*, %struct.tg3** %2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @tg3_phy_autoneg_cfg(%struct.tg3* %91, i32 %92, i32 %93)
  %95 = load %struct.tg3*, %struct.tg3** %2, align 8
  %96 = getelementptr inbounds %struct.tg3, %struct.tg3* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load %struct.tg3*, %struct.tg3** %2, align 8
  %103 = getelementptr inbounds %struct.tg3, %struct.tg3* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %213

109:                                              ; preds = %101, %90
  %110 = load %struct.tg3*, %struct.tg3** %2, align 8
  %111 = load i32, i32* @MII_BMCR, align 4
  %112 = load i32, i32* @BMCR_ANENABLE, align 4
  %113 = load i32, i32* @BMCR_ANRESTART, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @tg3_writephy(%struct.tg3* %110, i32 %111, i32 %114)
  br label %213

116:                                              ; preds = %15
  %117 = load %struct.tg3*, %struct.tg3** %2, align 8
  %118 = getelementptr inbounds %struct.tg3, %struct.tg3* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.tg3*, %struct.tg3** %2, align 8
  %122 = getelementptr inbounds %struct.tg3, %struct.tg3* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 8
  %124 = load %struct.tg3*, %struct.tg3** %2, align 8
  %125 = getelementptr inbounds %struct.tg3, %struct.tg3* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.tg3*, %struct.tg3** %2, align 8
  %129 = getelementptr inbounds %struct.tg3, %struct.tg3* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  store i64 %127, i64* %130, align 8
  %131 = load %struct.tg3*, %struct.tg3** %2, align 8
  %132 = call i64 @tg3_asic_rev(%struct.tg3* %131)
  %133 = load i64, i64* @ASIC_REV_5714, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %116
  %136 = load %struct.tg3*, %struct.tg3** %2, align 8
  %137 = load i32, i32* @MII_ADVERTISE, align 4
  %138 = load i32, i32* @ADVERTISE_ALL, align 4
  %139 = call i32 @tg3_writephy(%struct.tg3* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %116
  store i32 0, i32* %6, align 4
  %141 = load %struct.tg3*, %struct.tg3** %2, align 8
  %142 = getelementptr inbounds %struct.tg3, %struct.tg3* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %145 [
    i32 130, label %146
    i32 129, label %147
    i32 128, label %151
  ]

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %140, %145
  br label %155

147:                                              ; preds = %140
  %148 = load i32, i32* @BMCR_SPEED100, align 4
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  br label %155

151:                                              ; preds = %140
  %152 = load i32, i32* @BMCR_SPEED1000, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %151, %147, %146
  %156 = load %struct.tg3*, %struct.tg3** %2, align 8
  %157 = getelementptr inbounds %struct.tg3, %struct.tg3* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @DUPLEX_FULL, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i32, i32* @BMCR_FULLDPLX, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %162, %155
  %167 = load %struct.tg3*, %struct.tg3** %2, align 8
  %168 = load i32, i32* @MII_BMCR, align 4
  %169 = call i64 @tg3_readphy(%struct.tg3* %167, i32 %168, i32* %7)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %212, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %212

175:                                              ; preds = %171
  %176 = load %struct.tg3*, %struct.tg3** %2, align 8
  %177 = load i32, i32* @MII_BMCR, align 4
  %178 = load i32, i32* @BMCR_LOOPBACK, align 4
  %179 = call i32 @tg3_writephy(%struct.tg3* %176, i32 %177, i32 %178)
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %203, %175
  %181 = load i32, i32* %5, align 4
  %182 = icmp slt i32 %181, 1500
  br i1 %182, label %183, label %206

183:                                              ; preds = %180
  %184 = call i32 @udelay(i32 10)
  %185 = load %struct.tg3*, %struct.tg3** %2, align 8
  %186 = load i32, i32* @MII_BMSR, align 4
  %187 = call i64 @tg3_readphy(%struct.tg3* %185, i32 %186, i32* %8)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %183
  %190 = load %struct.tg3*, %struct.tg3** %2, align 8
  %191 = load i32, i32* @MII_BMSR, align 4
  %192 = call i64 @tg3_readphy(%struct.tg3* %190, i32 %191, i32* %8)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189, %183
  br label %203

195:                                              ; preds = %189
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @BMSR_LSTATUS, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %195
  %201 = call i32 @udelay(i32 40)
  br label %206

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %194
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %180

206:                                              ; preds = %200, %180
  %207 = load %struct.tg3*, %struct.tg3** %2, align 8
  %208 = load i32, i32* @MII_BMCR, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @tg3_writephy(%struct.tg3* %207, i32 %208, i32 %209)
  %211 = call i32 @udelay(i32 40)
  br label %212

212:                                              ; preds = %206, %171, %166
  br label %213

213:                                              ; preds = %108, %212, %109
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phy_autoneg_cfg(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i64 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
