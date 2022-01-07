; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_convert_pcal_info_5112.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_convert_pcal_info_5112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64**, i32*, i32* }
%struct.ath5k_chan_pcal_info = type { i32, %struct.ath5k_pdgain_info*, %struct.ath5k_chan_pcal_info_rf5112 }
%struct.ath5k_pdgain_info = type { i32, i32*, i64* }
%struct.ath5k_chan_pcal_info_rf5112 = type { i64*, i32*, i64*, i32* }

@AR5K_EEPROM_N_PD_CURVES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_XPD0_POINTS = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_XPD3_POINTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32, %struct.ath5k_chan_pcal_info*)* @ath5k_eeprom_convert_pcal_info_5112 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_convert_pcal_info_5112(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_chan_pcal_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %8 = alloca %struct.ath5k_eeprom_info*, align 8
  %9 = alloca %struct.ath5k_chan_pcal_info_rf5112*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ath5k_pdgain_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_chan_pcal_info* %2, %struct.ath5k_chan_pcal_info** %7, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %18, %struct.ath5k_eeprom_info** %8, align 8
  %19 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %20 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %19, i32 0, i32 0
  %21 = load i64**, i64*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %280, %3
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %29 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %27, %34
  br i1 %35, label %36, label %283

36:                                               ; preds = %26
  %37 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %37, i64 %39
  %41 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %40, i32 0, i32 2
  store %struct.ath5k_chan_pcal_info_rf5112* %41, %struct.ath5k_chan_pcal_info_rf5112** %9, align 8
  %42 = load i32, i32* @AR5K_EEPROM_N_PD_CURVES, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kcalloc(i32 %42, i32 24, i32 %43)
  %45 = bitcast i8* %44 to %struct.ath5k_pdgain_info*
  %46 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %49, i32 0, i32 1
  store %struct.ath5k_pdgain_info* %45, %struct.ath5k_pdgain_info** %50, align 8
  %51 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %54, i32 0, i32 1
  %56 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %55, align 8
  %57 = icmp ne %struct.ath5k_pdgain_info* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %36
  br label %284

59:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %276, %59
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %63 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %61, %68
  br i1 %69, label %70, label %279

70:                                               ; preds = %60
  %71 = load i64*, i64** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %14, align 8
  %76 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %76, i64 %78
  %80 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %79, i32 0, i32 1
  %81 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %81, i64 %82
  store %struct.ath5k_pdgain_info* %83, %struct.ath5k_pdgain_info** %15, align 8
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %192

86:                                               ; preds = %70
  %87 = load i32, i32* @AR5K_EEPROM_N_XPD0_POINTS, align 4
  %88 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %89 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %91 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @kcalloc(i32 %92, i32 8, i32 %93)
  %95 = bitcast i8* %94 to i64*
  %96 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %97 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %96, i32 0, i32 2
  store i64* %95, i64** %97, align 8
  %98 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %99 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %86
  br label %284

103:                                              ; preds = %86
  %104 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %105 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @kcalloc(i32 %106, i32 4, i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %111 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %113 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %103
  br label %284

117:                                              ; preds = %103
  %118 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %9, align 8
  %119 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %124 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  store i64 %122, i64* %126, align 8
  %127 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %9, align 8
  %128 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %133 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %131, i32* %135, align 4
  store i32 1, i32* %13, align 4
  br label %136

136:                                              ; preds = %178, %117
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %139 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %136
  %143 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %9, align 8
  %144 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %151 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %157 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sub i32 %159, 1
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %9, align 8
  %165 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %163, %170
  %172 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %173 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  store i64 %171, i64* %177, align 8
  br label %178

178:                                              ; preds = %142
  %179 = load i32, i32* %13, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %136

181:                                              ; preds = %136
  %182 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %183 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %188 = load i32, i32* %11, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %187, i64 %189
  %191 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %190, i32 0, i32 0
  store i32 %186, i32* %191, align 8
  br label %275

192:                                              ; preds = %70
  %193 = load i32, i32* %12, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %274

195:                                              ; preds = %192
  %196 = load i32, i32* @AR5K_EEPROM_N_XPD3_POINTS, align 4
  %197 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %198 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %200 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call i8* @kcalloc(i32 %201, i32 8, i32 %202)
  %204 = bitcast i8* %203 to i64*
  %205 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %206 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %205, i32 0, i32 2
  store i64* %204, i64** %206, align 8
  %207 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %208 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %207, i32 0, i32 2
  %209 = load i64*, i64** %208, align 8
  %210 = icmp ne i64* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %195
  br label %284

212:                                              ; preds = %195
  %213 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %214 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @GFP_KERNEL, align 4
  %217 = call i8* @kcalloc(i32 %215, i32 4, i32 %216)
  %218 = bitcast i8* %217 to i32*
  %219 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %220 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %219, i32 0, i32 1
  store i32* %218, i32** %220, align 8
  %221 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %222 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %212
  br label %284

226:                                              ; preds = %212
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %260, %226
  %228 = load i32, i32* %13, align 4
  %229 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %230 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ult i32 %228, %231
  br i1 %232, label %233, label %263

233:                                              ; preds = %227
  %234 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %9, align 8
  %235 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %242 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %240, i32* %246, align 4
  %247 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %9, align 8
  %248 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = load i32, i32* %13, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %255 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %254, i32 0, i32 2
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  store i64 %253, i64* %259, align 8
  br label %260

260:                                              ; preds = %233
  %261 = load i32, i32* %13, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %13, align 4
  br label %227

263:                                              ; preds = %227
  %264 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %265 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %270 = load i32, i32* %11, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %269, i64 %271
  %273 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %272, i32 0, i32 0
  store i32 %268, i32* %273, align 8
  br label %274

274:                                              ; preds = %263, %192
  br label %275

275:                                              ; preds = %274, %181
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %12, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %60

279:                                              ; preds = %60
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %11, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %11, align 4
  br label %26

283:                                              ; preds = %26
  store i32 0, i32* %4, align 4
  br label %290

284:                                              ; preds = %225, %211, %116, %102, %58
  %285 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw* %285, i32 %286)
  %288 = load i32, i32* @ENOMEM, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %4, align 4
  br label %290

290:                                              ; preds = %284, %283
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
