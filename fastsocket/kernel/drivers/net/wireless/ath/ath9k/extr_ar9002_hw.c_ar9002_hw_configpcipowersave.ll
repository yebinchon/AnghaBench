; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_configpcipowersave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9002_hw_configpcipowersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@AR_PCIE_SERDES = common dso_local global i32 0, align 4
@AR_PCIE_SERDES2 = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_D3_L1_DISABLE = common dso_local global i32 0, align 4
@AR9285_WA_DEFAULT = common dso_local global i32 0, align 4
@AR9280_WA_DEFAULT = common dso_local global i32 0, align 4
@AR_WA_BIT6 = common dso_local global i32 0, align 4
@AR_WA_BIT7 = common dso_local global i32 0, align 4
@AR_WA_BIT22 = common dso_local global i32 0, align 4
@AR_WA_BIT23 = common dso_local global i32 0, align 4
@AR_WA_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9002_hw_configpcipowersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_configpcipowersave(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @INI_RA(%struct.TYPE_4__* %24, i64 %25, i32 0)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @INI_RA(%struct.TYPE_4__* %28, i64 %29, i32 1)
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %22, i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %14

35:                                               ; preds = %14
  br label %71

36:                                               ; preds = %9
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = load i32, i32* @AR_PCIE_SERDES, align 4
  %41 = call i32 @REG_WRITE(%struct.ath_hw* %39, i32 %40, i32 -1840710656)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* @AR_PCIE_SERDES, align 4
  %44 = call i32 @REG_WRITE(%struct.ath_hw* %42, i32 %43, i32 613566756)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = load i32, i32* @AR_PCIE_SERDES, align 4
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %45, i32 %46, i32 671088697)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = load i32, i32* @AR_PCIE_SERDES, align 4
  %50 = call i32 @REG_WRITE(%struct.ath_hw* %48, i32 %49, i32 1393952804)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_PCIE_SERDES, align 4
  %53 = call i32 @REG_WRITE(%struct.ath_hw* %51, i32 %52, i32 -443021959)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load i32, i32* @AR_PCIE_SERDES, align 4
  %56 = call i32 @REG_WRITE(%struct.ath_hw* %54, i32 %55, i32 1961983)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_PCIE_SERDES, align 4
  %59 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 447397440)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = load i32, i32* @AR_PCIE_SERDES, align 4
  %62 = call i32 @REG_WRITE(%struct.ath_hw* %60, i32 %61, i32 -1106225836)
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = load i32, i32* @AR_PCIE_SERDES, align 4
  %65 = call i32 @REG_WRITE(%struct.ath_hw* %63, i32 %64, i32 929799)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load i32, i32* @AR_PCIE_SERDES2, align 4
  %68 = call i32 @REG_WRITE(%struct.ath_hw* %66, i32 %67, i32 0)
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %69)
  br label %71

71:                                               ; preds = %36, %35
  %72 = call i32 @udelay(i32 1000)
  br label %73

73:                                               ; preds = %71, %2
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %173

76:                                               ; preds = %73
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %79 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %80 = call i32 @REG_CLR_BIT(%struct.ath_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = load i32, i32* @AR_WA, align 4
  %83 = call i32 @REG_READ(%struct.ath_hw* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %76
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %89
  br label %133

102:                                              ; preds = %76
  %103 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %104 = call i64 @AR_SREV_9285(%struct.ath_hw* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %108 = call i64 @AR_SREV_9271(%struct.ath_hw* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %112 = call i64 @AR_SREV_9287(%struct.ath_hw* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110, %106, %102
  %115 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  %116 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %114, %110
  %120 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %121 = call i64 @AR_SREV_9280(%struct.ath_hw* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i32, i32* @AR9280_WA_DEFAULT, align 4
  %125 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123, %114
  %129 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %123, %119
  br label %133

133:                                              ; preds = %132, %101
  %134 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %135 = call i64 @AR_SREV_9280(%struct.ath_hw* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %139 = call i64 @AR_SREV_9285(%struct.ath_hw* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %143 = call i64 @AR_SREV_9287(%struct.ath_hw* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %141, %137, %133
  %146 = load i32, i32* @AR_WA_BIT6, align 4
  %147 = load i32, i32* @AR_WA_BIT7, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %145, %141
  %153 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %154 = call i64 @AR_SREV_9280(%struct.ath_hw* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* @AR_WA_BIT22, align 4
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %152
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = call i64 @AR_SREV_9285E_20(%struct.ath_hw* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i32, i32* @AR_WA_BIT23, align 4
  %166 = load i32, i32* %6, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %164, %160
  %169 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %170 = load i32, i32* @AR_WA, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @REG_WRITE(%struct.ath_hw* %169, i32 %170, i32 %171)
  br label %263

173:                                              ; preds = %73
  %174 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %175 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %173
  %180 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %181 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %6, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %186, %179
  br label %232

192:                                              ; preds = %173
  %193 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %194 = call i64 @AR_SREV_9285(%struct.ath_hw* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %192
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = call i64 @AR_SREV_9271(%struct.ath_hw* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %202 = call i64 @AR_SREV_9287(%struct.ath_hw* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %200, %196, %192
  %205 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %6, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %204
  br label %231

214:                                              ; preds = %200
  %215 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %216 = call i64 @AR_SREV_9280(%struct.ath_hw* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %214
  %219 = load i32, i32* @AR9280_WA_DEFAULT, align 4
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %6, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %222, %218
  br label %230

228:                                              ; preds = %214
  %229 = load i32, i32* @AR_WA_DEFAULT, align 4
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %228, %227
  br label %231

231:                                              ; preds = %230, %213
  br label %232

232:                                              ; preds = %231, %191
  %233 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %234 = call i64 @AR_SREV_9285(%struct.ath_hw* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %238 = call i64 @AR_SREV_9287(%struct.ath_hw* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %236, %232
  %241 = load i32, i32* @AR_WA_BIT6, align 4
  %242 = load i32, i32* @AR_WA_BIT7, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* %6, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %240, %236
  %247 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %248 = call i64 @AR_SREV_9285E_20(%struct.ath_hw* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = load i32, i32* @AR_WA_BIT23, align 4
  %252 = load i32, i32* %6, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %250, %246
  %255 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %256 = load i32, i32* @AR_WA, align 4
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @REG_WRITE(%struct.ath_hw* %255, i32 %256, i32 %257)
  %259 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %260 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %261 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %262 = call i32 @REG_SET_BIT(%struct.ath_hw* %259, i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %254, %168
  ret void
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @INI_RA(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285E_20(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
