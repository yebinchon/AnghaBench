; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tg3 = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.TYPE_3__ = type { %struct.phy_device** }
%struct.phy_device = type { i64, i64, i64, i64, i64 }

@TG3_PHY_MII_ADDR = common dso_local global i64 0, align 8
@MAC_MODE_PORT_MODE_MASK = common dso_local global i32 0, align 4
@MAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@MAC_MODE_PORT_MODE_MII = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@ASIC_REV_5785 = common dso_local global i64 0, align 8
@MAC_MODE_PORT_MODE_GMII = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@MAC_MI_STAT = common dso_local global i32 0, align 4
@MAC_MI_STAT_10MBPS_MODE = common dso_local global i32 0, align 4
@MAC_MI_STAT_LNKSTAT_ATTN_ENAB = common dso_local global i32 0, align 4
@MAC_TX_LENGTHS = common dso_local global i32 0, align 4
@TX_LENGTHS_IPG_CRS_SHIFT = common dso_local global i32 0, align 4
@TX_LENGTHS_IPG_SHIFT = common dso_local global i32 0, align 4
@TX_LENGTHS_SLOT_TIME_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tg3_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tg3*, align 8
  %9 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.tg3* @netdev_priv(%struct.net_device* %10)
  store %struct.tg3* %11, %struct.tg3** %8, align 8
  %12 = load %struct.tg3*, %struct.tg3** %8, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.phy_device**, %struct.phy_device*** %15, align 8
  %17 = load i64, i64* @TG3_PHY_MII_ADDR, align 8
  %18 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %16, i64 %17
  %19 = load %struct.phy_device*, %struct.phy_device** %18, align 8
  store %struct.phy_device* %19, %struct.phy_device** %9, align 8
  %20 = load %struct.tg3*, %struct.tg3** %8, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.tg3*, %struct.tg3** %8, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAC_MODE_PORT_MODE_MASK, align 4
  %27 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.tg3*, %struct.tg3** %8, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %112

39:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %40 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPEED_100, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %47 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPEED_10, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %75

55:                                               ; preds = %45
  %56 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SPEED_1000, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.tg3*, %struct.tg3** %8, align 8
  %63 = call i64 @tg3_asic_rev(%struct.tg3* %62)
  %64 = load i64, i64* @ASIC_REV_5785, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %55
  %67 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DUPLEX_HALF, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %107

85:                                               ; preds = %75
  %86 = load %struct.tg3*, %struct.tg3** %8, align 8
  %87 = getelementptr inbounds %struct.tg3, %struct.tg3* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mii_advertise_flowctrl(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %92 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @LPA_PAUSE_CAP, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %85
  %98 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %97
  br label %107

107:                                              ; preds = %106, %81
  %108 = load %struct.tg3*, %struct.tg3** %8, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @tg3_setup_flow_control(%struct.tg3* %108, i32 %109, i32 %110)
  br label %116

112:                                              ; preds = %1
  %113 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.tg3*, %struct.tg3** %8, align 8
  %119 = getelementptr inbounds %struct.tg3, %struct.tg3* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.tg3*, %struct.tg3** %8, align 8
  %125 = getelementptr inbounds %struct.tg3, %struct.tg3* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @MAC_MODE, align 4
  %127 = load %struct.tg3*, %struct.tg3** %8, align 8
  %128 = getelementptr inbounds %struct.tg3, %struct.tg3* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @tw32_f(i32 %126, i32 %129)
  %131 = call i32 @udelay(i32 40)
  br label %132

132:                                              ; preds = %122, %116
  %133 = load %struct.tg3*, %struct.tg3** %8, align 8
  %134 = call i64 @tg3_asic_rev(%struct.tg3* %133)
  %135 = load i64, i64* @ASIC_REV_5785, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %139 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SPEED_10, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @MAC_MI_STAT, align 4
  %145 = load i32, i32* @MAC_MI_STAT_10MBPS_MODE, align 4
  %146 = load i32, i32* @MAC_MI_STAT_LNKSTAT_ATTN_ENAB, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @tw32(i32 %144, i32 %147)
  br label %153

149:                                              ; preds = %137
  %150 = load i32, i32* @MAC_MI_STAT, align 4
  %151 = load i32, i32* @MAC_MI_STAT_LNKSTAT_ATTN_ENAB, align 4
  %152 = call i32 @tw32(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %143
  br label %154

154:                                              ; preds = %153, %132
  %155 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %156 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SPEED_1000, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %162 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DUPLEX_HALF, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load i32, i32* @MAC_TX_LENGTHS, align 4
  %168 = load i32, i32* @TX_LENGTHS_IPG_CRS_SHIFT, align 4
  %169 = shl i32 2, %168
  %170 = load i32, i32* @TX_LENGTHS_IPG_SHIFT, align 4
  %171 = shl i32 6, %170
  %172 = or i32 %169, %171
  %173 = load i32, i32* @TX_LENGTHS_SLOT_TIME_SHIFT, align 4
  %174 = shl i32 255, %173
  %175 = or i32 %172, %174
  %176 = call i32 @tw32(i32 %167, i32 %175)
  br label %188

177:                                              ; preds = %160, %154
  %178 = load i32, i32* @MAC_TX_LENGTHS, align 4
  %179 = load i32, i32* @TX_LENGTHS_IPG_CRS_SHIFT, align 4
  %180 = shl i32 2, %179
  %181 = load i32, i32* @TX_LENGTHS_IPG_SHIFT, align 4
  %182 = shl i32 6, %181
  %183 = or i32 %180, %182
  %184 = load i32, i32* @TX_LENGTHS_SLOT_TIME_SHIFT, align 4
  %185 = shl i32 32, %184
  %186 = or i32 %183, %185
  %187 = call i32 @tw32(i32 %178, i32 %186)
  br label %188

188:                                              ; preds = %177, %166
  %189 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %190 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.tg3*, %struct.tg3** %8, align 8
  %193 = getelementptr inbounds %struct.tg3, %struct.tg3* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %191, %194
  br i1 %195, label %221, label %196

196:                                              ; preds = %188
  %197 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %198 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.tg3*, %struct.tg3** %8, align 8
  %201 = getelementptr inbounds %struct.tg3, %struct.tg3* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %199, %203
  br i1 %204, label %221, label %205

205:                                              ; preds = %196
  %206 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %207 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.tg3*, %struct.tg3** %8, align 8
  %210 = getelementptr inbounds %struct.tg3, %struct.tg3* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %208, %212
  br i1 %213, label %221, label %214

214:                                              ; preds = %205
  %215 = load i64, i64* %3, align 8
  %216 = load %struct.tg3*, %struct.tg3** %8, align 8
  %217 = getelementptr inbounds %struct.tg3, %struct.tg3* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %215, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %214, %205, %196, %188
  store i64 1, i64* %4, align 8
  br label %222

222:                                              ; preds = %221, %214
  %223 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %224 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.tg3*, %struct.tg3** %8, align 8
  %227 = getelementptr inbounds %struct.tg3, %struct.tg3* %226, i32 0, i32 1
  store i64 %225, i64* %227, align 8
  %228 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %229 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.tg3*, %struct.tg3** %8, align 8
  %232 = getelementptr inbounds %struct.tg3, %struct.tg3* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  store i64 %230, i64* %233, align 8
  %234 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %235 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.tg3*, %struct.tg3** %8, align 8
  %238 = getelementptr inbounds %struct.tg3, %struct.tg3* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 2
  store i64 %236, i64* %239, align 8
  %240 = load %struct.tg3*, %struct.tg3** %8, align 8
  %241 = getelementptr inbounds %struct.tg3, %struct.tg3* %240, i32 0, i32 2
  %242 = call i32 @spin_unlock_bh(i32* %241)
  %243 = load i64, i64* %4, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %222
  %246 = load %struct.tg3*, %struct.tg3** %8, align 8
  %247 = call i32 @tg3_link_report(%struct.tg3* %246)
  br label %248

248:                                              ; preds = %245, %222
  ret void
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @mii_advertise_flowctrl(i32) #1

declare dso_local i32 @tg3_setup_flow_control(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tg3_link_report(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
