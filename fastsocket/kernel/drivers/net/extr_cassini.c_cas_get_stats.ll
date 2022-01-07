; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.cas = type { i32*, i64, i32, %struct.net_device_stats* }

@N_TX_RINGS = common dso_local global i32 0, align 4
@REG_MAC_FCS_ERR = common dso_local global i64 0, align 8
@REG_MAC_ALIGN_ERR = common dso_local global i64 0, align 8
@REG_MAC_LEN_ERR = common dso_local global i64 0, align 8
@REG_MAC_COLL_EXCESS = common dso_local global i64 0, align 8
@REG_MAC_COLL_LATE = common dso_local global i64 0, align 8
@REG_MAC_COLL_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @cas_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @cas_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cas*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.cas* @netdev_priv(%struct.net_device* %9)
  store %struct.cas* %10, %struct.cas** %4, align 8
  %11 = load %struct.cas*, %struct.cas** %4, align 8
  %12 = getelementptr inbounds %struct.cas, %struct.cas* %11, i32 0, i32 3
  %13 = load %struct.net_device_stats*, %struct.net_device_stats** %12, align 8
  store %struct.net_device_stats* %13, %struct.net_device_stats** %5, align 8
  %14 = load %struct.cas*, %struct.cas** %4, align 8
  %15 = getelementptr inbounds %struct.cas, %struct.cas* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %20 = load i32, i32* @N_TX_RINGS, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %19, i64 %21
  store %struct.net_device_stats* %22, %struct.net_device_stats** %2, align 8
  br label %366

23:                                               ; preds = %1
  %24 = load %struct.cas*, %struct.cas** %4, align 8
  %25 = getelementptr inbounds %struct.cas, %struct.cas* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @N_TX_RINGS, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.cas*, %struct.cas** %4, align 8
  %33 = getelementptr inbounds %struct.cas, %struct.cas* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_MAC_FCS_ERR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = and i32 %37, 65535
  %39 = sext i32 %38 to i64
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %41 = load i32, i32* @N_TX_RINGS, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i64 %42
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %39
  store i64 %46, i64* %44, align 8
  %47 = load %struct.cas*, %struct.cas** %4, align 8
  %48 = getelementptr inbounds %struct.cas, %struct.cas* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @REG_MAC_ALIGN_ERR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  %53 = and i32 %52, 65535
  %54 = sext i32 %53 to i64
  %55 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %56 = load i32, i32* @N_TX_RINGS, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %55, i64 %57
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 13
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %54
  store i64 %61, i64* %59, align 8
  %62 = load %struct.cas*, %struct.cas** %4, align 8
  %63 = getelementptr inbounds %struct.cas, %struct.cas* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_MAC_LEN_ERR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  %68 = and i32 %67, 65535
  %69 = sext i32 %68 to i64
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %71 = load i32, i32* @N_TX_RINGS, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i64 %72
  %74 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %69
  store i64 %76, i64* %74, align 8
  %77 = load %struct.cas*, %struct.cas** %4, align 8
  %78 = getelementptr inbounds %struct.cas, %struct.cas* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @REG_MAC_COLL_EXCESS, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  %83 = and i32 %82, 65535
  %84 = load %struct.cas*, %struct.cas** %4, align 8
  %85 = getelementptr inbounds %struct.cas, %struct.cas* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @REG_MAC_COLL_LATE, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %83, %90
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %95 = load i32, i32* @N_TX_RINGS, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %94, i64 %96
  %98 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %97, i32 0, i32 11
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %93
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.cas*, %struct.cas** %4, align 8
  %103 = getelementptr inbounds %struct.cas, %struct.cas* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @REG_MAC_COLL_NORMAL, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readl(i64 %106)
  %108 = and i32 %107, 65535
  %109 = sext i32 %108 to i64
  %110 = add i64 %101, %109
  %111 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %112 = load i32, i32* @N_TX_RINGS, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %111, i64 %113
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 15
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %110
  store i64 %117, i64* %115, align 8
  %118 = load %struct.cas*, %struct.cas** %4, align 8
  %119 = call i32 @cas_clear_mac_err(%struct.cas* %118)
  %120 = load %struct.cas*, %struct.cas** %4, align 8
  %121 = getelementptr inbounds %struct.cas, %struct.cas* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = call i32 @spin_lock(i32* %123)
  %125 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %126 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %125, i64 0
  %127 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %126, i32 0, i32 15
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %130 = load i32, i32* @N_TX_RINGS, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %129, i64 %131
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 15
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %128
  store i64 %135, i64* %133, align 8
  %136 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %137 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %136, i64 0
  %138 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %137, i32 0, i32 14
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %141 = load i32, i32* @N_TX_RINGS, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %140, i64 %142
  %144 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %143, i32 0, i32 14
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %139
  store i64 %146, i64* %144, align 8
  %147 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %148 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %147, i64 0
  %149 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %148, i32 0, i32 13
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %152 = load i32, i32* @N_TX_RINGS, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %151, i64 %153
  %155 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %154, i32 0, i32 13
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %150
  store i64 %157, i64* %155, align 8
  %158 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %159 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %158, i64 0
  %160 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %159, i32 0, i32 12
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %163 = load i32, i32* @N_TX_RINGS, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %162, i64 %164
  %166 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %165, i32 0, i32 12
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %161
  store i64 %168, i64* %166, align 8
  %169 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %170 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %169, i64 0
  %171 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %170, i32 0, i32 11
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %174 = load i32, i32* @N_TX_RINGS, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %173, i64 %175
  %177 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %176, i32 0, i32 11
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, %172
  store i64 %179, i64* %177, align 8
  %180 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %181 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %180, i64 0
  %182 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %185 = load i32, i32* @N_TX_RINGS, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %184, i64 %186
  %188 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, %183
  store i64 %190, i64* %188, align 8
  %191 = load %struct.cas*, %struct.cas** %4, align 8
  %192 = getelementptr inbounds %struct.cas, %struct.cas* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = call i32 @spin_unlock(i32* %194)
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %350, %23
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @N_TX_RINGS, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %353

200:                                              ; preds = %196
  %201 = load %struct.cas*, %struct.cas** %4, align 8
  %202 = getelementptr inbounds %struct.cas, %struct.cas* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = call i32 @spin_lock(i32* %206)
  %208 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %208, i64 %210
  %212 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %211, i32 0, i32 9
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %215 = load i32, i32* @N_TX_RINGS, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %214, i64 %216
  %218 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %217, i32 0, i32 9
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, %213
  store i64 %220, i64* %218, align 8
  %221 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %221, i64 %223
  %225 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %228 = load i32, i32* @N_TX_RINGS, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %227, i64 %229
  %231 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, %226
  store i64 %233, i64* %231, align 8
  %234 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %234, i64 %236
  %238 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %237, i32 0, i32 7
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %241 = load i32, i32* @N_TX_RINGS, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %240, i64 %242
  %244 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %243, i32 0, i32 7
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, %239
  store i64 %246, i64* %244, align 8
  %247 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %247, i64 %249
  %251 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %254 = load i32, i32* @N_TX_RINGS, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %253, i64 %255
  %257 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %256, i32 0, i32 6
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, %252
  store i64 %259, i64* %257, align 8
  %260 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %260, i64 %262
  %264 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %267 = load i32, i32* @N_TX_RINGS, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %266, i64 %268
  %270 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, %265
  store i64 %272, i64* %270, align 8
  %273 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %273, i64 %275
  %277 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %276, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %280 = load i32, i32* @N_TX_RINGS, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %279, i64 %281
  %283 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, %278
  store i64 %285, i64* %283, align 8
  %286 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %286, i64 %288
  %290 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %293 = load i32, i32* @N_TX_RINGS, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %292, i64 %294
  %296 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, %291
  store i64 %298, i64* %296, align 8
  %299 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %300 = load i32, i32* %7, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %299, i64 %301
  %303 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %306 = load i32, i32* @N_TX_RINGS, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %305, i64 %307
  %309 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, %304
  store i64 %311, i64* %309, align 8
  %312 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %312, i64 %314
  %316 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %319 = load i32, i32* @N_TX_RINGS, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %318, i64 %320
  %322 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %323, %317
  store i64 %324, i64* %322, align 8
  %325 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %325, i64 %327
  %329 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %332 = load i32, i32* @N_TX_RINGS, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %331, i64 %333
  %335 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %336, %330
  store i64 %337, i64* %335, align 8
  %338 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %338, i64 %340
  %342 = call i32 @memset(%struct.net_device_stats* %341, i32 0, i32 128)
  %343 = load %struct.cas*, %struct.cas** %4, align 8
  %344 = getelementptr inbounds %struct.cas, %struct.cas* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = call i32 @spin_unlock(i32* %348)
  br label %350

350:                                              ; preds = %200
  %351 = load i32, i32* %7, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %7, align 4
  br label %196

353:                                              ; preds = %196
  %354 = load %struct.cas*, %struct.cas** %4, align 8
  %355 = getelementptr inbounds %struct.cas, %struct.cas* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* @N_TX_RINGS, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i64, i64* %6, align 8
  %361 = call i32 @spin_unlock_irqrestore(i32* %359, i64 %360)
  %362 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %363 = load i32, i32* @N_TX_RINGS, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %362, i64 %364
  store %struct.net_device_stats* %365, %struct.net_device_stats** %2, align 8
  br label %366

366:                                              ; preds = %353, %18
  %367 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  ret %struct.net_device_stats* %367
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cas_clear_mac_err(%struct.cas*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.net_device_stats*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
