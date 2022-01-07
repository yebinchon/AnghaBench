; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_PhyStartLink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_PhyStartLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_3__ = type { i32*, i64, i64, i64, i8*, i64 }

@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Trying to activate link.\0A\00", align 1
@MII_GEN_STS = common dso_local global i32 0, align 4
@MII_GS_AUTONEG = common dso_local global i32 0, align 4
@TLAN_SPEED_10 = common dso_local global i64 0, align 8
@TLAN_DUPLEX_HALF = common dso_local global i64 0, align 8
@MII_GEN_CTL = common dso_local global i32 0, align 4
@TLAN_DUPLEX_FULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@TLAN_SPEED_100 = common dso_local global i64 0, align 8
@MII_AN_ADV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"TLAN: %s: Starting autonegotiation.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_FINISH_AN = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1FRAG = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1CHAN = common dso_local global i32 0, align 4
@TLAN_NET_CFG_PHY_EN = common dso_local global i32 0, align 4
@TLAN_NET_CONFIG = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_PDOWN = common dso_local global i32 0, align 4
@TLAN_TLPHY_CTL = common dso_local global i32 0, align 4
@TLAN_TC_AUISEL = common dso_local global i32 0, align 4
@MII_GC_DUPLEX = common dso_local global i32 0, align 4
@MII_GC_SPEEDSEL = common dso_local global i32 0, align 4
@TLAN_TIMER_FINISH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @TLan_PhyStartLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_PhyStartLink(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TLAN_DBG(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MII_GEN_STS, align 4
  %28 = call i32 @TLan_MiiReadReg(%struct.net_device* %25, i32 %26, i32 %27, i32* %8)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MII_GEN_STS, align 4
  %32 = call i32 @TLan_MiiReadReg(%struct.net_device* %29, i32 %30, i32 %31, i32* %4)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MII_GS_AUTONEG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %147

37:                                               ; preds = %1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %147, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 11
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TLAN_SPEED_10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TLAN_DUPLEX_HALF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MII_GEN_CTL, align 4
  %60 = call i32 @TLan_MiiWriteReg(%struct.net_device* %57, i32 %58, i32 %59, i32 0)
  br label %146

61:                                               ; preds = %50, %42
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TLAN_SPEED_10, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MII_GEN_CTL, align 4
  %80 = call i32 @TLan_MiiWriteReg(%struct.net_device* %77, i32 %78, i32 %79, i32 256)
  br label %145

81:                                               ; preds = %67, %61
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TLAN_SPEED_100, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TLAN_DUPLEX_HALF, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @MII_GEN_CTL, align 4
  %97 = call i32 @TLan_MiiWriteReg(%struct.net_device* %94, i32 %95, i32 %96, i32 8192)
  br label %144

98:                                               ; preds = %87, %81
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TLAN_SPEED_100, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @MII_GEN_CTL, align 4
  %117 = call i32 @TLan_MiiWriteReg(%struct.net_device* %114, i32 %115, i32 %116, i32 8448)
  br label %143

118:                                              ; preds = %104, %98
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @MII_AN_ADV, align 4
  %122 = load i32, i32* %4, align 4
  %123 = shl i32 %122, 5
  %124 = or i32 %123, 1
  %125 = call i32 @TLan_MiiWriteReg(%struct.net_device* %119, i32 %120, i32 %121, i32 %124)
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @MII_GEN_CTL, align 4
  %129 = call i32 @TLan_MiiWriteReg(%struct.net_device* %126, i32 %127, i32 %128, i32 4096)
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @MII_GEN_CTL, align 4
  %133 = call i32 @TLan_MiiWriteReg(%struct.net_device* %130, i32 %131, i32 %132, i32 4608)
  %134 = load %struct.net_device*, %struct.net_device** %2, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = load i32, i32* @HZ, align 4
  %140 = mul nsw i32 2, %139
  %141 = load i32, i32* @TLAN_TIMER_PHY_FINISH_AN, align 4
  %142 = call i32 @TLan_SetTimer(%struct.net_device* %138, i32 %140, i32 %141)
  br label %241

143:                                              ; preds = %110
  br label %144

144:                                              ; preds = %143, %93
  br label %145

145:                                              ; preds = %144, %73
  br label %146

146:                                              ; preds = %145, %56
  br label %147

147:                                              ; preds = %146, %37, %1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %152
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @TLAN_NET_CFG_1FRAG, align 4
  %161 = load i32, i32* @TLAN_NET_CFG_1CHAN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @TLAN_NET_CFG_PHY_EN, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %6, align 4
  %165 = load %struct.net_device*, %struct.net_device** %2, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TLAN_NET_CONFIG, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @TLan_DioWrite16(i32 %167, i32 %168, i32 %169)
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = load i32, i32* @HZ, align 4
  %173 = mul nsw i32 40, %172
  %174 = sdiv i32 %173, 1000
  %175 = load i32, i32* @TLAN_TIMER_PHY_PDOWN, align 4
  %176 = call i32 @TLan_SetTimer(%struct.net_device* %171, i32 %174, i32 %175)
  br label %241

177:                                              ; preds = %152, %147
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %234

182:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  %183 = load %struct.net_device*, %struct.net_device** %2, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %186 = call i32 @TLan_MiiReadReg(%struct.net_device* %183, i32 %184, i32 %185, i32* %9)
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %182
  %192 = load i32, i32* @TLAN_TC_AUISEL, align 4
  %193 = load i32, i32* %9, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %223

195:                                              ; preds = %182
  %196 = load i32, i32* @TLAN_TC_AUISEL, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %9, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %9, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %195
  %206 = load i32, i32* @MII_GC_DUPLEX, align 4
  %207 = load i32, i32* %5, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %5, align 4
  %209 = load i8*, i8** @TRUE, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  br label %212

212:                                              ; preds = %205, %195
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @TLAN_SPEED_100, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* @MII_GC_SPEEDSEL, align 4
  %220 = load i32, i32* %5, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %218, %212
  br label %223

223:                                              ; preds = %222, %191
  %224 = load %struct.net_device*, %struct.net_device** %2, align 8
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @MII_GEN_CTL, align 4
  %227 = load i32, i32* %5, align 4
  %228 = call i32 @TLan_MiiWriteReg(%struct.net_device* %224, i32 %225, i32 %226, i32 %227)
  %229 = load %struct.net_device*, %struct.net_device** %2, align 8
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @TLan_MiiWriteReg(%struct.net_device* %229, i32 %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %223, %177
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.net_device*, %struct.net_device** %2, align 8
  %237 = load i32, i32* @HZ, align 4
  %238 = mul nsw i32 4, %237
  %239 = load i32, i32* @TLAN_TIMER_FINISH_RESET, align 4
  %240 = call i32 @TLan_SetTimer(%struct.net_device* %236, i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %235, %157, %118
  ret void
}

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32) #1

declare dso_local i32 @TLan_MiiReadReg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @TLan_MiiWriteReg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @TLan_SetTimer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @TLan_DioWrite16(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
