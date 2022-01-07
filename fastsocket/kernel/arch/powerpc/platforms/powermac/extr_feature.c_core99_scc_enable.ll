; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_scc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_scc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.macio_chip = type { i64 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ch-a\00", align 1
@MACIO_FLAG_SCCA_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ch-b\00", align 1
@MACIO_FLAG_SCCB_ON = common dso_local global i64 0, align 8
@KEYLARGO_FCR0 = common dso_local global i32 0, align 4
@KL0_SCC_CELL_ENABLE = common dso_local global i32 0, align 4
@KL0_SCCA_ENABLE = common dso_local global i32 0, align 4
@PMAC_SCC_I2S1 = common dso_local global i64 0, align 8
@KL0_SCC_A_INTF_ENABLE = common dso_local global i32 0, align 4
@KL0_SCCB_ENABLE = common dso_local global i32 0, align 4
@PMAC_SCC_IRDA = common dso_local global i64 0, align 8
@KL0_SCC_B_INTF_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_CLK32_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_CLK19_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_SOURCE1_SEL = common dso_local global i32 0, align 4
@KL0_IRDA_FAST_CONNECT = common dso_local global i32 0, align 4
@KL0_IRDA_DEFAULT1 = common dso_local global i32 0, align 4
@KL0_IRDA_DEFAULT0 = common dso_local global i32 0, align 4
@KL0_IRDA_SOURCE2_SEL = common dso_local global i32 0, align 4
@KL0_IRDA_HIGH_BAND = common dso_local global i32 0, align 4
@KL0_SCC_RESET = common dso_local global i32 0, align 4
@KL0_IRDA_RESET = common dso_local global i32 0, align 4
@PMAC_SCC_FLAG_XMON = common dso_local global i64 0, align 8
@MACIO_FLAG_SCC_LOCKED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_scc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_scc_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.macio_chip* @macio_find(%struct.device_node* %14, i32 0)
  store %struct.macio_chip* %15, %struct.macio_chip** %8, align 8
  %16 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %17 = icmp ne %struct.macio_chip* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %281

21:                                               ; preds = %3
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  store i64 %28, i64* %10, align 8
  br label %41

29:                                               ; preds = %21
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = getelementptr inbounds %struct.device_node, %struct.device_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  store i64 %36, i64* %10, align 8
  br label %40

37:                                               ; preds = %29
  %38 = load i64, i64* @ENODEV, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %4, align 8
  br label %281

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %185

44:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @LOCK(i64 %45)
  %47 = load i32, i32* @KEYLARGO_FCR0, align 4
  %48 = call i32 @MACIO_IN32(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @KL0_SCC_CELL_ENABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @KL0_SCC_CELL_ENABLE, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %44
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load i32, i32* @KL0_SCCA_ENABLE, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i64, i64* %6, align 8
  %67 = and i64 %66, 4095
  %68 = load i64, i64* @PMAC_SCC_I2S1, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i32, i32* @KL0_SCC_A_INTF_ENABLE, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load i32, i32* @KL0_SCC_A_INTF_ENABLE, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %80
  %86 = load i32, i32* @KL0_SCCB_ENABLE, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i64, i64* %6, align 8
  %90 = and i64 %89, 4095
  %91 = load i64, i64* @PMAC_SCC_IRDA, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %85
  %94 = load i32, i32* @KL0_SCC_B_INTF_ENABLE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @KL0_IRDA_ENABLE, align 4
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* @KL0_IRDA_CLK32_ENABLE, align 4
  %102 = load i32, i32* @KL0_IRDA_CLK19_ENABLE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @KL0_IRDA_SOURCE1_SEL, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @KL0_IRDA_FAST_CONNECT, align 4
  %110 = load i32, i32* @KL0_IRDA_DEFAULT1, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @KL0_IRDA_DEFAULT0, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @KL0_IRDA_SOURCE2_SEL, align 4
  %118 = load i32, i32* @KL0_IRDA_HIGH_BAND, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %127

123:                                              ; preds = %85
  %124 = load i32, i32* @KL0_SCC_B_INTF_ENABLE, align 4
  %125 = load i32, i32* %11, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %123, %93
  br label %128

128:                                              ; preds = %127, %80
  %129 = load i32, i32* @KEYLARGO_FCR0, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @MACIO_OUT32(i32 %129, i32 %130)
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %134 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = or i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %128
  %140 = load i32, i32* @KEYLARGO_FCR0, align 4
  %141 = load i32, i32* @KL0_SCC_RESET, align 4
  %142 = call i32 @MACIO_BIS(i32 %140, i32 %141)
  %143 = load i32, i32* @KEYLARGO_FCR0, align 4
  %144 = call i32 @MACIO_IN32(i32 %143)
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @UNLOCK(i64 %145)
  %147 = call i32 @mdelay(i32 15)
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @LOCK(i64 %148)
  %150 = load i32, i32* @KEYLARGO_FCR0, align 4
  %151 = load i32, i32* @KL0_SCC_RESET, align 4
  %152 = call i32 @MACIO_BIC(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %139, %128
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load i32, i32* @KEYLARGO_FCR0, align 4
  %158 = load i32, i32* @KL0_IRDA_RESET, align 4
  %159 = call i32 @MACIO_BIS(i32 %157, i32 %158)
  %160 = load i32, i32* @KEYLARGO_FCR0, align 4
  %161 = call i32 @MACIO_IN32(i32 %160)
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @UNLOCK(i64 %162)
  %164 = call i32 @mdelay(i32 15)
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @LOCK(i64 %165)
  %167 = load i32, i32* @KEYLARGO_FCR0, align 4
  %168 = load i32, i32* @KL0_IRDA_RESET, align 4
  %169 = call i32 @MACIO_BIC(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %156, %153
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @UNLOCK(i64 %171)
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @PMAC_SCC_FLAG_XMON, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %179 = sext i32 %178 to i64
  %180 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %181 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = or i64 %182, %179
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %177, %170
  br label %280

185:                                              ; preds = %41
  %186 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %187 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %190 = sext i32 %189 to i64
  %191 = and i64 %188, %190
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i64, i64* @EPERM, align 8
  %195 = sub nsw i64 0, %194
  store i64 %195, i64* %4, align 8
  br label %281

196:                                              ; preds = %185
  %197 = load i64, i64* %9, align 8
  %198 = call i32 @LOCK(i64 %197)
  %199 = load i32, i32* @KEYLARGO_FCR0, align 4
  %200 = call i32 @MACIO_IN32(i32 %199)
  store i32 %200, i32* %11, align 4
  %201 = load i64, i64* %10, align 8
  %202 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %203 = and i64 %201, %202
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %196
  %206 = load i32, i32* @KL0_SCCA_ENABLE, align 4
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %11, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %205, %196
  %211 = load i64, i64* %10, align 8
  %212 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %213 = and i64 %211, %212
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %252

215:                                              ; preds = %210
  %216 = load i32, i32* @KL0_SCCB_ENABLE, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %11, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %11, align 4
  %220 = load i64, i64* %6, align 8
  %221 = and i64 %220, 4095
  %222 = load i64, i64* @PMAC_SCC_IRDA, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %251

224:                                              ; preds = %215
  %225 = load i32, i32* @KL0_IRDA_ENABLE, align 4
  %226 = xor i32 %225, -1
  %227 = load i32, i32* %11, align 4
  %228 = and i32 %227, %226
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* @KL0_IRDA_CLK32_ENABLE, align 4
  %230 = load i32, i32* @KL0_IRDA_CLK19_ENABLE, align 4
  %231 = or i32 %229, %230
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %11, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* @KL0_IRDA_FAST_CONNECT, align 4
  %236 = load i32, i32* @KL0_IRDA_DEFAULT1, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @KL0_IRDA_DEFAULT0, align 4
  %239 = or i32 %237, %238
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %11, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* @KL0_IRDA_SOURCE1_SEL, align 4
  %244 = load i32, i32* @KL0_IRDA_SOURCE2_SEL, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @KL0_IRDA_HIGH_BAND, align 4
  %247 = or i32 %245, %246
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %11, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %224, %215
  br label %252

252:                                              ; preds = %251, %210
  %253 = load i32, i32* @KEYLARGO_FCR0, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call i32 @MACIO_OUT32(i32 %253, i32 %254)
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* @KL0_SCCA_ENABLE, align 4
  %258 = load i32, i32* @KL0_SCCB_ENABLE, align 4
  %259 = or i32 %257, %258
  %260 = and i32 %256, %259
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %252
  %263 = load i32, i32* @KL0_SCC_CELL_ENABLE, align 4
  %264 = xor i32 %263, -1
  %265 = load i32, i32* %11, align 4
  %266 = and i32 %265, %264
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* @KEYLARGO_FCR0, align 4
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @MACIO_OUT32(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %262, %252
  %271 = load i64, i64* %10, align 8
  %272 = xor i64 %271, -1
  %273 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %274 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = and i64 %275, %272
  store i64 %276, i64* %274, align 8
  %277 = load i64, i64* %9, align 8
  %278 = call i32 @UNLOCK(i64 %277)
  %279 = call i32 @mdelay(i32 10)
  br label %280

280:                                              ; preds = %270, %184
  store i64 0, i64* %4, align 8
  br label %281

281:                                              ; preds = %280, %193, %37, %18
  %282 = load i64, i64* %4, align 8
  ret i64 %282
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_IN32(i32) #1

declare dso_local i32 @MACIO_OUT32(i32, i32) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
