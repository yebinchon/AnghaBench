; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_shim__set_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_shim__set_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.libipw_security = type { i32, i64*, i64, i32, i64, i64, i32, i32* }
%struct.ipw2100_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32, i32, i64, i64, i64, i32, i32* }

@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i64 0, align 8
@STATUS_SECURITY_UPDATED = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Security flags: %c %c%c%c%c %c%c%c%c\0A\00", align 1
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.libipw_security*)* @shim__set_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shim__set_security(%struct.net_device* %0, %struct.libipw_security* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.libipw_security*, align 8
  %5 = alloca %struct.ipw2100_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.libipw_security* %1, %struct.libipw_security** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %8)
  store %struct.ipw2100_priv* %9, %struct.ipw2100_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @STATUS_INITIALIZED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %436

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %128, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %131

24:                                               ; preds = %21
  %25 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %26 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %127

32:                                               ; preds = %24
  %33 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %34 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %39, i64* %48, align 8
  %49 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %50 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %32
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %62 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %60
  store i32 %67, i32* %65, align 8
  br label %94

68:                                               ; preds = %32
  %69 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %80 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %87 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @memcpy(i32 %78, i32 %85, i64 %92)
  br label %94

94:                                               ; preds = %68, %57
  %95 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %96 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SEC_LEVEL_1, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = shl i32 1, %101
  %103 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %104 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %102
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %111 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %112 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %126

115:                                              ; preds = %94
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 1, %116
  %118 = xor i32 %117, -1
  %119 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %120 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %118
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %115, %100
  br label %127

127:                                              ; preds = %126, %24
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %21

131:                                              ; preds = %21
  %132 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %133 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %187

138:                                              ; preds = %131
  %139 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %140 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %146 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %138
  %150 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %151 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp sle i32 %152, 3
  br i1 %153, label %154, label %171

154:                                              ; preds = %149
  %155 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %156 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %159 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  store i32 %157, i32* %162, align 4
  %163 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %164 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %165 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %163
  store i32 %170, i32* %168, align 8
  br label %181

171:                                              ; preds = %149
  %172 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %175 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %174, i32 0, i32 2
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %173
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %171, %154
  %182 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %183 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %184 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %181, %138, %131
  %188 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %189 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @SEC_AUTH_MODE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %227

194:                                              ; preds = %187
  %195 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %196 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %202 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %200, %203
  br i1 %204, label %205, label %227

205:                                              ; preds = %194
  %206 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %207 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %210 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %209, i32 0, i32 2
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 3
  store i64 %208, i64* %213, align 8
  %214 = load i32, i32* @SEC_AUTH_MODE, align 4
  %215 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %216 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %215, i32 0, i32 2
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %214
  store i32 %221, i32* %219, align 8
  %222 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %223 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %224 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %205, %194, %187
  %228 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %229 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @SEC_ENABLED, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %267

234:                                              ; preds = %227
  %235 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %236 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %235, i32 0, i32 2
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %242 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %240, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %234
  %246 = load i32, i32* @SEC_ENABLED, align 4
  %247 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %248 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %247, i32 0, i32 2
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %246
  store i32 %253, i32* %251, align 8
  %254 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %255 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %258 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %257, i32 0, i32 2
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 4
  store i64 %256, i64* %261, align 8
  %262 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %263 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %264 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  store i32 1, i32* %7, align 4
  br label %267

267:                                              ; preds = %245, %234, %227
  %268 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %269 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @SEC_ENCRYPT, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %267
  %275 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %276 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %279 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %278, i32 0, i32 2
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 6
  store i32 %277, i32* %282, align 8
  br label %283

283:                                              ; preds = %274, %267
  %284 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %285 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @SEC_LEVEL, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %323

290:                                              ; preds = %283
  %291 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %292 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %291, i32 0, i32 2
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %298 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %296, %299
  br i1 %300, label %301, label %323

301:                                              ; preds = %290
  %302 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %303 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %306 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %305, i32 0, i32 2
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 5
  store i64 %304, i64* %309, align 8
  %310 = load i32, i32* @SEC_LEVEL, align 4
  %311 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %312 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %311, i32 0, i32 2
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %310
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %319 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %320 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %301, %290, %283
  %324 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %325 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %324, i32 0, i32 2
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = and i32 %329, 256
  %331 = icmp ne i32 %330, 0
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 49, i32 48
  %334 = trunc i32 %333 to i8
  %335 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %336 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %335, i32 0, i32 2
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = and i32 %340, 128
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i32 49, i32 48
  %345 = trunc i32 %344 to i8
  %346 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %347 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %346, i32 0, i32 2
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, 64
  %353 = icmp ne i32 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 49, i32 48
  %356 = trunc i32 %355 to i8
  %357 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %358 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %357, i32 0, i32 2
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = and i32 %362, 32
  %364 = icmp ne i32 %363, 0
  %365 = zext i1 %364 to i64
  %366 = select i1 %364, i32 49, i32 48
  %367 = trunc i32 %366 to i8
  %368 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %369 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %368, i32 0, i32 2
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = and i32 %373, 16
  %375 = icmp ne i32 %374, 0
  %376 = zext i1 %375 to i64
  %377 = select i1 %375, i32 49, i32 48
  %378 = trunc i32 %377 to i8
  %379 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %380 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %379, i32 0, i32 2
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = and i32 %384, 8
  %386 = icmp ne i32 %385, 0
  %387 = zext i1 %386 to i64
  %388 = select i1 %386, i32 49, i32 48
  %389 = trunc i32 %388 to i8
  %390 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %391 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %390, i32 0, i32 2
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = and i32 %395, 4
  %397 = icmp ne i32 %396, 0
  %398 = zext i1 %397 to i64
  %399 = select i1 %397, i32 49, i32 48
  %400 = trunc i32 %399 to i8
  %401 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %402 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %401, i32 0, i32 2
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, 2
  %408 = icmp ne i32 %407, 0
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i32 49, i32 48
  %411 = trunc i32 %410 to i8
  %412 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %413 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %412, i32 0, i32 2
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 8
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = zext i1 %419 to i64
  %421 = select i1 %419, i32 49, i32 48
  %422 = trunc i32 %421 to i8
  %423 = call i32 @IPW_DEBUG_WEP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 signext %334, i8 signext %345, i8 signext %356, i8 signext %367, i8 signext %378, i8 signext %389, i8 signext %400, i8 signext %411, i8 signext %422)
  %424 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %425 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %428 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %429 = or i32 %427, %428
  %430 = and i32 %426, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %323
  %433 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %434 = call i32 @ipw2100_configure_security(%struct.ipw2100_priv* %433, i32 0)
  br label %435

435:                                              ; preds = %432, %323
  br label %436

436:                                              ; preds = %435, %19
  %437 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %438 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %437, i32 0, i32 1
  %439 = call i32 @mutex_unlock(i32* %438)
  ret void
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @IPW_DEBUG_WEP(i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ipw2100_configure_security(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
