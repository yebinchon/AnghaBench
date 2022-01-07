; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_ctl_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64, i32, i32*, %struct.ath5k_edge_power*, i32 }
%struct.ath5k_edge_power = type { i32, i32, i32 }

@AR5K_EEPROM_POWER_M = common dso_local global i32 0, align 4
@AR5K_EEPROM_GROUP8_OFFSET = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_4_0 = common dso_local global i64 0, align 8
@AR5K_EEPROM_GROUP5_OFFSET = common dso_local global i64 0, align 8
@AR5K_CTL_MODE_M = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11A = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11G = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_3_3 = common dso_local global i64 0, align 8
@AR5K_EEPROM_N_EDGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_eeprom_read_ctl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_ctl_info(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_eeprom_info*, align 8
  %4 = alloca %struct.ath5k_edge_power*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %14, %struct.ath5k_eeprom_info** %3, align 8
  %15 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %17 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @AR5K_EEPROM_FREQ_M(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %21 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @AR5K_EEPROM_CTL(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %25 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @AR5K_EEPROM_N_CTLS(i64 %26)
  %28 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %29 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %60, %1
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %33 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %10, align 8
  %39 = trunc i64 %37 to i32
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @AR5K_EEPROM_READ(i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %46 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 255
  %53 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %54 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %36
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %8, align 4
  br label %30

63:                                               ; preds = %30
  %64 = load i64, i64* @AR5K_EEPROM_GROUP8_OFFSET, align 8
  store i64 %64, i64* %10, align 8
  %65 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %66 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AR5K_EEPROM_VERSION_4_0, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %72 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @AR5K_EEPROM_TARGET_PWRSTART(i32 %73)
  %75 = load i64, i64* @AR5K_EEPROM_GROUP5_OFFSET, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %10, align 8
  br label %86

79:                                               ; preds = %63
  %80 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %81 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @AR5K_EEPROM_GROUPS_START(i64 %82)
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %79, %70
  %87 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %88 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %87, i32 0, i32 3
  %89 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %88, align 8
  store %struct.ath5k_edge_power* %89, %struct.ath5k_edge_power** %4, align 8
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %439, %86
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %93 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %442

96:                                               ; preds = %90
  %97 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %98 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AR5K_CTL_MODE_M, align 4
  %105 = and i32 %103, %104
  switch i32 %105, label %108 [
    i32 129, label %106
    i32 128, label %106
  ]

106:                                              ; preds = %96, %96
  %107 = load i32, i32* @AR5K_EEPROM_MODE_11A, align 4
  store i32 %107, i32* %7, align 4
  br label %110

108:                                              ; preds = %96
  %109 = load i32, i32* @AR5K_EEPROM_MODE_11G, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %112 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %110
  %120 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %121 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AR5K_EEPROM_VERSION_3_3, align 8
  %124 = icmp sge i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* %10, align 8
  %127 = add nsw i64 %126, 8
  store i64 %127, i64* %10, align 8
  br label %131

128:                                              ; preds = %119
  %129 = load i64, i64* %10, align 8
  %130 = add nsw i64 %129, 7
  store i64 %130, i64* %10, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* @AR5K_EEPROM_N_EDGES, align 4
  %133 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %133, i64 %134
  store %struct.ath5k_edge_power* %135, %struct.ath5k_edge_power** %4, align 8
  br label %439

136:                                              ; preds = %110
  %137 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %138 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AR5K_EEPROM_VERSION_3_3, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %224

142:                                              ; preds = %136
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %171, %142
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @AR5K_EEPROM_N_EDGES, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %143
  %148 = load i64, i64* %10, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %10, align 8
  %150 = trunc i64 %148 to i32
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @AR5K_EEPROM_READ(i32 %150, i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = ashr i32 %153, 8
  %155 = load i32, i32* %5, align 4
  %156 = and i32 %154, %155
  %157 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %157, i64 %159
  %161 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %160, i32 0, i32 0
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %5, align 4
  %164 = and i32 %162, %163
  %165 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %165, i64 %168
  %170 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 4
  br label %171

171:                                              ; preds = %147
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %9, align 4
  br label %143

174:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %220, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @AR5K_EEPROM_N_EDGES, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %223

179:                                              ; preds = %175
  %180 = load i64, i64* %10, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %10, align 8
  %182 = trunc i64 %180 to i32
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @AR5K_EEPROM_READ(i32 %182, i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = ashr i32 %185, 8
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %186, %187
  %189 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %189, i64 %191
  %193 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %192, i32 0, i32 1
  store i32 %188, i32* %193, align 4
  %194 = load i32, i32* %11, align 4
  %195 = ashr i32 %194, 14
  %196 = and i32 %195, 1
  %197 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %197, i64 %199
  %201 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %200, i32 0, i32 2
  store i32 %196, i32* %201, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %6, align 4
  %204 = and i32 %202, %203
  %205 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %205, i64 %208
  %210 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %209, i32 0, i32 1
  store i32 %204, i32* %210, align 4
  %211 = load i32, i32* %11, align 4
  %212 = ashr i32 %211, 6
  %213 = and i32 %212, 1
  %214 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %214, i64 %217
  %219 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %218, i32 0, i32 2
  store i32 %213, i32* %219, align 4
  br label %220

220:                                              ; preds = %179
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 2
  store i32 %222, i32* %9, align 4
  br label %175

223:                                              ; preds = %175
  br label %411

224:                                              ; preds = %136
  %225 = load i64, i64* %10, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %10, align 8
  %227 = trunc i64 %225 to i32
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @AR5K_EEPROM_READ(i32 %227, i32 %228)
  %230 = load i32, i32* %11, align 4
  %231 = ashr i32 %230, 9
  %232 = load i32, i32* %5, align 4
  %233 = and i32 %231, %232
  %234 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %235 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %234, i64 0
  %236 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 4
  %237 = load i32, i32* %11, align 4
  %238 = ashr i32 %237, 2
  %239 = load i32, i32* %5, align 4
  %240 = and i32 %238, %239
  %241 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %242 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %241, i64 1
  %243 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 4
  %244 = load i32, i32* %11, align 4
  %245 = shl i32 %244, 5
  %246 = load i32, i32* %5, align 4
  %247 = and i32 %245, %246
  %248 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %249 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %248, i64 2
  %250 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 4
  %251 = load i64, i64* %10, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %10, align 8
  %253 = trunc i64 %251 to i32
  %254 = load i32, i32* %11, align 4
  %255 = call i32 @AR5K_EEPROM_READ(i32 %253, i32 %254)
  %256 = load i32, i32* %11, align 4
  %257 = ashr i32 %256, 11
  %258 = and i32 %257, 31
  %259 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %260 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %259, i64 2
  %261 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %258
  store i32 %263, i32* %261, align 4
  %264 = load i32, i32* %11, align 4
  %265 = ashr i32 %264, 4
  %266 = load i32, i32* %5, align 4
  %267 = and i32 %265, %266
  %268 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %269 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %268, i64 3
  %270 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 4
  %271 = load i32, i32* %11, align 4
  %272 = shl i32 %271, 3
  %273 = load i32, i32* %5, align 4
  %274 = and i32 %272, %273
  %275 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %276 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %275, i64 4
  %277 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 4
  %278 = load i64, i64* %10, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %10, align 8
  %280 = trunc i64 %278 to i32
  %281 = load i32, i32* %11, align 4
  %282 = call i32 @AR5K_EEPROM_READ(i32 %280, i32 %281)
  %283 = load i32, i32* %11, align 4
  %284 = ashr i32 %283, 13
  %285 = and i32 %284, 7
  %286 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %287 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %286, i64 4
  %288 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %285
  store i32 %290, i32* %288, align 4
  %291 = load i32, i32* %11, align 4
  %292 = ashr i32 %291, 6
  %293 = load i32, i32* %5, align 4
  %294 = and i32 %292, %293
  %295 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %296 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %295, i64 5
  %297 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %296, i32 0, i32 0
  store i32 %294, i32* %297, align 4
  %298 = load i32, i32* %11, align 4
  %299 = shl i32 %298, 1
  %300 = load i32, i32* %5, align 4
  %301 = and i32 %299, %300
  %302 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %303 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %302, i64 6
  %304 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %303, i32 0, i32 0
  store i32 %301, i32* %304, align 4
  %305 = load i64, i64* %10, align 8
  %306 = add nsw i64 %305, 1
  store i64 %306, i64* %10, align 8
  %307 = trunc i64 %305 to i32
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @AR5K_EEPROM_READ(i32 %307, i32 %308)
  %310 = load i32, i32* %11, align 4
  %311 = ashr i32 %310, 15
  %312 = and i32 %311, 1
  %313 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %314 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %313, i64 6
  %315 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %312
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %11, align 4
  %319 = ashr i32 %318, 8
  %320 = load i32, i32* %5, align 4
  %321 = and i32 %319, %320
  %322 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %323 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %322, i64 7
  %324 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %323, i32 0, i32 0
  store i32 %321, i32* %324, align 4
  %325 = load i32, i32* %11, align 4
  %326 = ashr i32 %325, 2
  %327 = load i32, i32* %6, align 4
  %328 = and i32 %326, %327
  %329 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %330 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %329, i64 0
  %331 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %330, i32 0, i32 1
  store i32 %328, i32* %331, align 4
  %332 = load i32, i32* %11, align 4
  %333 = shl i32 %332, 4
  %334 = load i32, i32* %6, align 4
  %335 = and i32 %333, %334
  %336 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %337 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %336, i64 1
  %338 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %337, i32 0, i32 1
  store i32 %335, i32* %338, align 4
  %339 = load i64, i64* %10, align 8
  %340 = add nsw i64 %339, 1
  store i64 %340, i64* %10, align 8
  %341 = trunc i64 %339 to i32
  %342 = load i32, i32* %11, align 4
  %343 = call i32 @AR5K_EEPROM_READ(i32 %341, i32 %342)
  %344 = load i32, i32* %11, align 4
  %345 = ashr i32 %344, 12
  %346 = and i32 %345, 15
  %347 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %348 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %347, i64 1
  %349 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %346
  store i32 %351, i32* %349, align 4
  %352 = load i32, i32* %11, align 4
  %353 = ashr i32 %352, 6
  %354 = load i32, i32* %6, align 4
  %355 = and i32 %353, %354
  %356 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %357 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %356, i64 2
  %358 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %357, i32 0, i32 1
  store i32 %355, i32* %358, align 4
  %359 = load i32, i32* %11, align 4
  %360 = load i32, i32* %6, align 4
  %361 = and i32 %359, %360
  %362 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %363 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %362, i64 3
  %364 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %363, i32 0, i32 1
  store i32 %361, i32* %364, align 4
  %365 = load i64, i64* %10, align 8
  %366 = add nsw i64 %365, 1
  store i64 %366, i64* %10, align 8
  %367 = trunc i64 %365 to i32
  %368 = load i32, i32* %11, align 4
  %369 = call i32 @AR5K_EEPROM_READ(i32 %367, i32 %368)
  %370 = load i32, i32* %11, align 4
  %371 = ashr i32 %370, 10
  %372 = load i32, i32* %6, align 4
  %373 = and i32 %371, %372
  %374 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %375 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %374, i64 4
  %376 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %375, i32 0, i32 1
  store i32 %373, i32* %376, align 4
  %377 = load i32, i32* %11, align 4
  %378 = ashr i32 %377, 4
  %379 = load i32, i32* %6, align 4
  %380 = and i32 %378, %379
  %381 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %382 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %381, i64 5
  %383 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %382, i32 0, i32 1
  store i32 %380, i32* %383, align 4
  %384 = load i32, i32* %11, align 4
  %385 = shl i32 %384, 2
  %386 = load i32, i32* %6, align 4
  %387 = and i32 %385, %386
  %388 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %389 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %388, i64 6
  %390 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %389, i32 0, i32 1
  store i32 %387, i32* %390, align 4
  %391 = load i64, i64* %10, align 8
  %392 = add nsw i64 %391, 1
  store i64 %392, i64* %10, align 8
  %393 = trunc i64 %391 to i32
  %394 = load i32, i32* %11, align 4
  %395 = call i32 @AR5K_EEPROM_READ(i32 %393, i32 %394)
  %396 = load i32, i32* %11, align 4
  %397 = ashr i32 %396, 14
  %398 = and i32 %397, 3
  %399 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %400 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %399, i64 6
  %401 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %402, %398
  store i32 %403, i32* %401, align 4
  %404 = load i32, i32* %11, align 4
  %405 = ashr i32 %404, 8
  %406 = load i32, i32* %6, align 4
  %407 = and i32 %405, %406
  %408 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %409 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %408, i64 7
  %410 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %409, i32 0, i32 1
  store i32 %407, i32* %410, align 4
  br label %411

411:                                              ; preds = %224, %223
  store i32 0, i32* %9, align 4
  br label %412

412:                                              ; preds = %431, %411
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* @AR5K_EEPROM_N_EDGES, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %434

416:                                              ; preds = %412
  %417 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %3, align 8
  %418 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %419 = load i32, i32* %9, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %418, i64 %420
  %422 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %7, align 4
  %425 = call i32 @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %417, i32 %423, i32 %424)
  %426 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %427 = load i32, i32* %9, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %426, i64 %428
  %430 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %429, i32 0, i32 0
  store i32 %425, i32* %430, align 4
  br label %431

431:                                              ; preds = %416
  %432 = load i32, i32* %9, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %9, align 4
  br label %412

434:                                              ; preds = %412
  %435 = load i32, i32* @AR5K_EEPROM_N_EDGES, align 4
  %436 = load %struct.ath5k_edge_power*, %struct.ath5k_edge_power** %4, align 8
  %437 = sext i32 %435 to i64
  %438 = getelementptr inbounds %struct.ath5k_edge_power, %struct.ath5k_edge_power* %436, i64 %437
  store %struct.ath5k_edge_power* %438, %struct.ath5k_edge_power** %4, align 8
  br label %439

439:                                              ; preds = %434, %131
  %440 = load i32, i32* %8, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %8, align 4
  br label %90

442:                                              ; preds = %90
  ret i32 0
}

declare dso_local i32 @AR5K_EEPROM_FREQ_M(i64) #1

declare dso_local i64 @AR5K_EEPROM_CTL(i64) #1

declare dso_local i32 @AR5K_EEPROM_N_CTLS(i64) #1

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i64 @AR5K_EEPROM_TARGET_PWRSTART(i32) #1

declare dso_local i64 @AR5K_EEPROM_GROUPS_START(i64) #1

declare dso_local i32 @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
