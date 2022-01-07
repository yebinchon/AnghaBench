; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_stop_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_stop_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_5__ = type { i8* }

@MIF_CFG = common dso_local global i64 0, align 8
@MIF_CFG_POLL = common dso_local global i8 0, align 1
@MAC_RXCFG_HFE = common dso_local global i8 0, align 1
@MAC_RXCFG_SFCS = common dso_local global i8 0, align 1
@MAC_RXCFG_ENAB = common dso_local global i8 0, align 1
@MAC_RXCFG = common dso_local global i64 0, align 8
@WOL_MATCH0 = common dso_local global i64 0, align 8
@WOL_MATCH1 = common dso_local global i64 0, align 8
@WOL_MATCH2 = common dso_local global i64 0, align 8
@WOL_MCOUNT_N = common dso_local global i8 0, align 1
@WOL_MCOUNT_M = common dso_local global i8 0, align 1
@WOL_MCOUNT = common dso_local global i64 0, align 8
@WOL_WAKECSR_ENABLE = common dso_local global i8 0, align 1
@MAC_XIFCFG = common dso_local global i64 0, align 8
@MAC_XIFCFG_GMII = common dso_local global i8 0, align 1
@WOL_WAKECSR_MII = common dso_local global i8 0, align 1
@WOL_WAKECSR = common dso_local global i64 0, align 8
@MAC_TXCFG = common dso_local global i64 0, align 8
@TXDMA_CFG = common dso_local global i64 0, align 8
@RXDMA_CFG = common dso_local global i64 0, align 8
@MAC_TXRST_CMD = common dso_local global i8 0, align 1
@MAC_TXRST = common dso_local global i64 0, align 8
@MAC_RXRST_CMD = common dso_local global i8 0, align 1
@MAC_RXRST = common dso_local global i64 0, align 8
@MIF_CFG_BBMODE = common dso_local global i8 0, align 1
@MIF_BBCLK = common dso_local global i64 0, align 8
@MIF_BBDATA = common dso_local global i64 0, align 8
@MIF_BBOENAB = common dso_local global i64 0, align 8
@MAC_XIFCFG_LBCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*, i32)* @gem_stop_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_stop_phy(%struct.gem* %0, i32 %1) #0 {
  %3 = alloca %struct.gem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.gem* %0, %struct.gem** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @msleep(i32 10)
  %10 = load %struct.gem*, %struct.gem** %3, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MIF_CFG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call zeroext i8 @readl(i64 %14)
  store i8 %15, i8* %5, align 1
  %16 = load i8, i8* @MIF_CFG_POLL, align 1
  %17 = zext i8 %16 to i32
  %18 = xor i32 %17, -1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i8, i8* %5, align 1
  %24 = load %struct.gem*, %struct.gem** %3, align 8
  %25 = getelementptr inbounds %struct.gem, %struct.gem* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MIF_CFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i8 zeroext %23, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %149

32:                                               ; preds = %2
  %33 = load %struct.gem*, %struct.gem** %3, align 8
  %34 = getelementptr inbounds %struct.gem, %struct.gem* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %149

37:                                               ; preds = %32
  %38 = load %struct.gem*, %struct.gem** %3, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8* %43, i8** %7, align 8
  %44 = load i8, i8* @MAC_RXCFG_HFE, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @MAC_RXCFG_SFCS, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %45, %47
  %49 = load i8, i8* @MAC_RXCFG_ENAB, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i8
  %53 = load %struct.gem*, %struct.gem** %3, align 8
  %54 = getelementptr inbounds %struct.gem, %struct.gem* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MAC_RXCFG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i8 zeroext %52, i64 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %63, %67
  %69 = trunc i32 %68 to i8
  %70 = load %struct.gem*, %struct.gem** %3, align 8
  %71 = getelementptr inbounds %struct.gem, %struct.gem* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @WOL_MATCH0, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i8 zeroext %69, i64 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %80, %84
  %86 = trunc i32 %85 to i8
  %87 = load %struct.gem*, %struct.gem** %3, align 8
  %88 = getelementptr inbounds %struct.gem, %struct.gem* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @WOL_MATCH1, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i8 zeroext %86, i64 %91)
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %97, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.gem*, %struct.gem** %3, align 8
  %105 = getelementptr inbounds %struct.gem, %struct.gem* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @WOL_MATCH2, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i8 zeroext %103, i64 %108)
  %110 = load i8, i8* @WOL_MCOUNT_N, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @WOL_MCOUNT_M, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %111, %113
  %115 = trunc i32 %114 to i8
  %116 = load %struct.gem*, %struct.gem** %3, align 8
  %117 = getelementptr inbounds %struct.gem, %struct.gem* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @WOL_MCOUNT, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i8 zeroext %115, i64 %120)
  %122 = load i8, i8* @WOL_WAKECSR_ENABLE, align 1
  store i8 %122, i8* %8, align 1
  %123 = load %struct.gem*, %struct.gem** %3, align 8
  %124 = getelementptr inbounds %struct.gem, %struct.gem* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MAC_XIFCFG, align 8
  %127 = add nsw i64 %125, %126
  %128 = call zeroext i8 @readl(i64 %127)
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* @MAC_XIFCFG_GMII, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %129, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %37
  %135 = load i8, i8* @WOL_WAKECSR_MII, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* %8, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %138, %136
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %8, align 1
  br label %141

141:                                              ; preds = %134, %37
  %142 = load i8, i8* %8, align 1
  %143 = load %struct.gem*, %struct.gem** %3, align 8
  %144 = getelementptr inbounds %struct.gem, %struct.gem* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @WOL_WAKECSR, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i8 zeroext %142, i64 %147)
  br label %163

149:                                              ; preds = %32, %2
  %150 = load %struct.gem*, %struct.gem** %3, align 8
  %151 = getelementptr inbounds %struct.gem, %struct.gem* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MAC_RXCFG, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i8 zeroext 0, i64 %154)
  %156 = load %struct.gem*, %struct.gem** %3, align 8
  %157 = getelementptr inbounds %struct.gem, %struct.gem* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MAC_RXCFG, align 8
  %160 = add nsw i64 %158, %159
  %161 = call zeroext i8 @readl(i64 %160)
  %162 = call i32 @msleep(i32 10)
  br label %163

163:                                              ; preds = %149, %141
  %164 = load %struct.gem*, %struct.gem** %3, align 8
  %165 = getelementptr inbounds %struct.gem, %struct.gem* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MAC_TXCFG, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writel(i8 zeroext 0, i64 %168)
  %170 = load %struct.gem*, %struct.gem** %3, align 8
  %171 = getelementptr inbounds %struct.gem, %struct.gem* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @MAC_XIFCFG, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i8 zeroext 0, i64 %174)
  %176 = load %struct.gem*, %struct.gem** %3, align 8
  %177 = getelementptr inbounds %struct.gem, %struct.gem* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @TXDMA_CFG, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel(i8 zeroext 0, i64 %180)
  %182 = load %struct.gem*, %struct.gem** %3, align 8
  %183 = getelementptr inbounds %struct.gem, %struct.gem* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @RXDMA_CFG, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i8 zeroext 0, i64 %186)
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %295, label %190

190:                                              ; preds = %163
  %191 = load %struct.gem*, %struct.gem** %3, align 8
  %192 = getelementptr inbounds %struct.gem, %struct.gem* %191, i32 0, i32 2
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @spin_lock_irqsave(i32* %192, i64 %193)
  %195 = load %struct.gem*, %struct.gem** %3, align 8
  %196 = getelementptr inbounds %struct.gem, %struct.gem* %195, i32 0, i32 3
  %197 = call i32 @spin_lock(i32* %196)
  %198 = load %struct.gem*, %struct.gem** %3, align 8
  %199 = call i32 @gem_reset(%struct.gem* %198)
  %200 = load i8, i8* @MAC_TXRST_CMD, align 1
  %201 = load %struct.gem*, %struct.gem** %3, align 8
  %202 = getelementptr inbounds %struct.gem, %struct.gem* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @MAC_TXRST, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @writel(i8 zeroext %200, i64 %205)
  %207 = load i8, i8* @MAC_RXRST_CMD, align 1
  %208 = load %struct.gem*, %struct.gem** %3, align 8
  %209 = getelementptr inbounds %struct.gem, %struct.gem* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @MAC_RXRST, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @writel(i8 zeroext %207, i64 %212)
  %214 = load %struct.gem*, %struct.gem** %3, align 8
  %215 = getelementptr inbounds %struct.gem, %struct.gem* %214, i32 0, i32 3
  %216 = call i32 @spin_unlock(i32* %215)
  %217 = load %struct.gem*, %struct.gem** %3, align 8
  %218 = getelementptr inbounds %struct.gem, %struct.gem* %217, i32 0, i32 2
  %219 = load i64, i64* %6, align 8
  %220 = call i32 @spin_unlock_irqrestore(i32* %218, i64 %219)
  %221 = load %struct.gem*, %struct.gem** %3, align 8
  %222 = call i64 @found_mii_phy(%struct.gem* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %246

224:                                              ; preds = %190
  %225 = load %struct.gem*, %struct.gem** %3, align 8
  %226 = getelementptr inbounds %struct.gem, %struct.gem* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %231, align 8
  %233 = icmp ne i32 (%struct.TYPE_8__*)* %232, null
  br i1 %233, label %234, label %246

234:                                              ; preds = %224
  %235 = load %struct.gem*, %struct.gem** %3, align 8
  %236 = getelementptr inbounds %struct.gem, %struct.gem* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %241, align 8
  %243 = load %struct.gem*, %struct.gem** %3, align 8
  %244 = getelementptr inbounds %struct.gem, %struct.gem* %243, i32 0, i32 1
  %245 = call i32 %242(%struct.TYPE_8__* %244)
  br label %246

246:                                              ; preds = %234, %224, %190
  %247 = load i8, i8* %5, align 1
  %248 = zext i8 %247 to i32
  %249 = load i8, i8* @MIF_CFG_BBMODE, align 1
  %250 = zext i8 %249 to i32
  %251 = or i32 %248, %250
  %252 = trunc i32 %251 to i8
  %253 = load %struct.gem*, %struct.gem** %3, align 8
  %254 = getelementptr inbounds %struct.gem, %struct.gem* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @MIF_CFG, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i32 @writel(i8 zeroext %252, i64 %257)
  %259 = load %struct.gem*, %struct.gem** %3, align 8
  %260 = getelementptr inbounds %struct.gem, %struct.gem* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @MIF_BBCLK, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @writel(i8 zeroext 0, i64 %263)
  %265 = load %struct.gem*, %struct.gem** %3, align 8
  %266 = getelementptr inbounds %struct.gem, %struct.gem* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @MIF_BBDATA, align 8
  %269 = add nsw i64 %267, %268
  %270 = call i32 @writel(i8 zeroext 0, i64 %269)
  %271 = load %struct.gem*, %struct.gem** %3, align 8
  %272 = getelementptr inbounds %struct.gem, %struct.gem* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @MIF_BBOENAB, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @writel(i8 zeroext 0, i64 %275)
  %277 = load i8, i8* @MAC_XIFCFG_GMII, align 1
  %278 = zext i8 %277 to i32
  %279 = load i8, i8* @MAC_XIFCFG_LBCK, align 1
  %280 = zext i8 %279 to i32
  %281 = or i32 %278, %280
  %282 = trunc i32 %281 to i8
  %283 = load %struct.gem*, %struct.gem** %3, align 8
  %284 = getelementptr inbounds %struct.gem, %struct.gem* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @MAC_XIFCFG, align 8
  %287 = add nsw i64 %285, %286
  %288 = call i32 @writel(i8 zeroext %282, i64 %287)
  %289 = load %struct.gem*, %struct.gem** %3, align 8
  %290 = getelementptr inbounds %struct.gem, %struct.gem* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @MAC_XIFCFG, align 8
  %293 = add nsw i64 %291, %292
  %294 = call zeroext i8 @readl(i64 %293)
  br label %295

295:                                              ; preds = %246, %163
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local zeroext i8 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gem_reset(%struct.gem*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @found_mii_phy(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
