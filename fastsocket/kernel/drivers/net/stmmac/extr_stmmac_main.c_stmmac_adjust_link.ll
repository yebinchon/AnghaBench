; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.stmmac_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 (i32, i32)*, %struct.TYPE_8__*, i32, %struct.phy_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (i64, i32, i32, i32)* }
%struct.phy_device = type { i32, i32, i64, i64, i32 }

@probe = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"stmmac_adjust_link: called.  address %d link %d\0A\00", align 1
@MAC_CTRL_REG = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Speed (%d) is not 10 or 100!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"stmmac_adjust_link: exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @stmmac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.stmmac_priv* %12, %struct.stmmac_priv** %3, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 10
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  store %struct.phy_device* %15, %struct.phy_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = icmp eq %struct.phy_device* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %268

28:                                               ; preds = %1
  %29 = load i32, i32* @probe, align 4
  %30 = load i32, i32* @DEBUG, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i32, i8*, ...) @DBG(i32 %29, i32 %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %36)
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %39 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %38, i32 0, i32 5
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %237

46:                                               ; preds = %28
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @MAC_CTRL_REG, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %84

74:                                               ; preds = %58
  %75 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %76 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %75, i32 0, i32 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %74, %63
  %85 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %86 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %89 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %84, %46
  %91 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %92 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %97 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %96, i32 0, i32 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 %102(i64 %103, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %95, %90
  %111 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %115 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %223

118:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  %119 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %204 [
    i32 1000, label %122
    i32 100, label %140
    i32 10, label %140
  ]

122:                                              ; preds = %118
  %123 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %124 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @likely(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %130 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %129, i32 0, i32 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %10, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %128, %122
  br label %217

140:                                              ; preds = %118, %118
  %141 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %142 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %182

145:                                              ; preds = %140
  %146 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %147 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %146, i32 0, i32 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  %155 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %156 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SPEED_100, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %145
  %161 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %162 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %161, i32 0, i32 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %10, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %10, align 4
  br label %181

170:                                              ; preds = %145
  %171 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %172 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %171, i32 0, i32 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %170, %160
  br label %193

182:                                              ; preds = %140
  %183 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %184 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %183, i32 0, i32 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %10, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %182, %181
  %194 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %195 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %194, i32 0, i32 7
  %196 = load i32 (i32, i32)*, i32 (i32, i32)** %195, align 8
  %197 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %198 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %201 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 %196(i32 %199, i32 %202)
  br label %217

204:                                              ; preds = %118
  %205 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %206 = call i64 @netif_msg_link(%struct.stmmac_priv* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = getelementptr inbounds %struct.net_device, %struct.net_device* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %213 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %208, %204
  br label %217

217:                                              ; preds = %216, %193, %139
  %218 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %219 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %222 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %110
  %224 = load i32, i32* %10, align 4
  %225 = load i64, i64* %5, align 8
  %226 = load i64, i64* @MAC_CTRL_REG, align 8
  %227 = add i64 %225, %226
  %228 = call i32 @writel(i32 %224, i64 %227)
  %229 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %230 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %223
  store i32 1, i32* %7, align 4
  %234 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %235 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %234, i32 0, i32 4
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %233, %223
  br label %250

237:                                              ; preds = %28
  %238 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %239 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  store i32 1, i32* %7, align 4
  %243 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %244 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %243, i32 0, i32 4
  store i32 0, i32* %244, align 8
  %245 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %246 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %245, i32 0, i32 3
  store i32 0, i32* %246, align 4
  %247 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %248 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %247, i32 0, i32 2
  store i32 -1, i32* %248, align 8
  br label %249

249:                                              ; preds = %242, %237
  br label %250

250:                                              ; preds = %249, %236
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %250
  %254 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %255 = call i64 @netif_msg_link(%struct.stmmac_priv* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %259 = call i32 @phy_print_status(%struct.phy_device* %258)
  br label %260

260:                                              ; preds = %257, %253, %250
  %261 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %262 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %261, i32 0, i32 5
  %263 = load i64, i64* %6, align 8
  %264 = call i32 @spin_unlock_irqrestore(i32* %262, i64 %263)
  %265 = load i32, i32* @probe, align 4
  %266 = load i32, i32* @DEBUG, align 4
  %267 = call i32 (i32, i32, i8*, ...) @DBG(i32 %265, i32 %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %268

268:                                              ; preds = %260, %27
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG(i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i64 @netif_msg_link(%struct.stmmac_priv*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
