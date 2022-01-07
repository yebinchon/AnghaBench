; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info_2413.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info_2413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32**, i32*, i32*, i32*, %struct.ath5k_chan_pcal_info*, i32, %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info* }
%struct.ath5k_chan_pcal_info = type { %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_chan_pcal_info_rf2413 = type { i32*, i32*, i32**, i32** }

@AR5K_EEPROM_N_PD_CURVES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_5GHZ_CHAN = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_2GHZ_CHAN_2413 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_read_pcal_info_2413 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_pcal_info_2413(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_eeprom_info*, align 8
  %7 = alloca %struct.ath5k_chan_pcal_info_rf2413*, align 8
  %8 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %17, %struct.ath5k_eeprom_info** %6, align 8
  %18 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %19 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* @AR5K_EEPROM_N_PD_CURVES, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %50, %2
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %32 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %37, %38
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %56 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %730

66:                                               ; preds = %53
  %67 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @ath5k_cal_data_offset_2413(%struct.ath5k_eeprom_info* %67, i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i32, i32* %5, align 4
  switch i32 %70, label %130 [
    i32 130, label %71
    i32 129, label %90
    i32 128, label %110
  ]

71:                                               ; preds = %66
  %72 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %73 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @AR5K_EEPROM_HDR_11A(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %730

78:                                               ; preds = %71
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @ath5k_eeprom_init_11a_pcal_freq(%struct.ath5k_hw* %79, i64 %80)
  %82 = load i32, i32* @AR5K_EEPROM_N_5GHZ_CHAN, align 4
  %83 = sdiv i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %10, align 8
  %87 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %88 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %87, i32 0, i32 7
  %89 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %88, align 8
  store %struct.ath5k_chan_pcal_info* %89, %struct.ath5k_chan_pcal_info** %8, align 8
  br label %133

90:                                               ; preds = %66
  %91 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %92 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @AR5K_EEPROM_HDR_11B(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %730

97:                                               ; preds = %90
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @ath5k_eeprom_init_11bg_2413(%struct.ath5k_hw* %98, i32 %99, i64 %100)
  %102 = load i32, i32* @AR5K_EEPROM_N_2GHZ_CHAN_2413, align 4
  %103 = sdiv i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %10, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %10, align 8
  %107 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %108 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %107, i32 0, i32 6
  %109 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %108, align 8
  store %struct.ath5k_chan_pcal_info* %109, %struct.ath5k_chan_pcal_info** %8, align 8
  br label %133

110:                                              ; preds = %66
  %111 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %112 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @AR5K_EEPROM_HDR_11G(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %730

117:                                              ; preds = %110
  %118 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @ath5k_eeprom_init_11bg_2413(%struct.ath5k_hw* %118, i32 %119, i64 %120)
  %122 = load i32, i32* @AR5K_EEPROM_N_2GHZ_CHAN_2413, align 4
  %123 = sdiv i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %10, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %10, align 8
  %127 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %128 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %127, i32 0, i32 4
  %129 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %128, align 8
  store %struct.ath5k_chan_pcal_info* %129, %struct.ath5k_chan_pcal_info** %8, align 8
  br label %133

130:                                              ; preds = %66
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %730

133:                                              ; preds = %117, %97, %78
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %722, %133
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %137 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %135, %142
  br i1 %143, label %144, label %725

144:                                              ; preds = %134
  %145 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %8, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %145, i64 %147
  %149 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %148, i32 0, i32 0
  store %struct.ath5k_chan_pcal_info_rf2413* %149, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %150 = load i64, i64* %10, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %10, align 8
  %152 = trunc i64 %150 to i32
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @AR5K_EEPROM_READ(i32 %152, i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %155, 31
  %157 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %158 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %13, align 4
  %162 = ashr i32 %161, 5
  %163 = and i32 %162, 127
  %164 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %165 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %13, align 4
  %169 = ashr i32 %168, 12
  %170 = and i32 %169, 15
  %171 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %172 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %171, i32 0, i32 2
  %173 = load i32**, i32*** %172, align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %170, i32* %176, align 4
  %177 = load i64, i64* %10, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %10, align 8
  %179 = trunc i64 %177 to i32
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @AR5K_EEPROM_READ(i32 %179, i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = and i32 %182, 63
  %184 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %185 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %184, i32 0, i32 3
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 %183, i32* %189, align 4
  %190 = load i32, i32* %13, align 4
  %191 = ashr i32 %190, 6
  %192 = and i32 %191, 15
  %193 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %194 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %193, i32 0, i32 2
  %195 = load i32**, i32*** %194, align 8
  %196 = getelementptr inbounds i32*, i32** %195, i64 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %192, i32* %198, align 4
  %199 = load i32, i32* %13, align 4
  %200 = ashr i32 %199, 10
  %201 = and i32 %200, 63
  %202 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %203 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %202, i32 0, i32 3
  %204 = load i32**, i32*** %203, align 8
  %205 = getelementptr inbounds i32*, i32** %204, i64 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 %201, i32* %207, align 4
  %208 = load i64, i64* %10, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %10, align 8
  %210 = trunc i64 %208 to i32
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @AR5K_EEPROM_READ(i32 %210, i32 %211)
  %213 = load i32, i32* %13, align 4
  %214 = and i32 %213, 15
  %215 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %216 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %215, i32 0, i32 2
  %217 = load i32**, i32*** %216, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  store i32 %214, i32* %220, align 4
  %221 = load i32, i32* %13, align 4
  %222 = ashr i32 %221, 4
  %223 = and i32 %222, 63
  %224 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %225 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %224, i32 0, i32 3
  %226 = load i32**, i32*** %225, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  store i32 %223, i32* %229, align 4
  %230 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %231 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %230, i32 0, i32 2
  %232 = load i32**, i32*** %231, align 8
  %233 = getelementptr inbounds i32*, i32** %232, i64 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  store i32 0, i32* %235, align 4
  %236 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %237 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %236, i32 0, i32 3
  %238 = load i32**, i32*** %237, align 8
  %239 = getelementptr inbounds i32*, i32** %238, i64 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  store i32 0, i32* %241, align 4
  %242 = load i32, i32* %14, align 4
  %243 = icmp sgt i32 %242, 1
  br i1 %243, label %244, label %359

244:                                              ; preds = %144
  %245 = load i32, i32* %13, align 4
  %246 = ashr i32 %245, 10
  %247 = and i32 %246, 31
  %248 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %249 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  store i32 %247, i32* %251, align 4
  %252 = load i32, i32* %13, align 4
  %253 = ashr i32 %252, 15
  %254 = and i32 %253, 1
  %255 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %256 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  store i32 %254, i32* %258, align 4
  %259 = load i64, i64* %10, align 8
  %260 = add nsw i64 %259, 1
  store i64 %260, i64* %10, align 8
  %261 = trunc i64 %259 to i32
  %262 = load i32, i32* %13, align 4
  %263 = call i32 @AR5K_EEPROM_READ(i32 %261, i32 %262)
  %264 = load i32, i32* %13, align 4
  %265 = and i32 %264, 63
  %266 = shl i32 %265, 1
  %267 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %268 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %266
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* %13, align 4
  %274 = ashr i32 %273, 6
  %275 = and i32 %274, 15
  %276 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %277 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %276, i32 0, i32 2
  %278 = load i32**, i32*** %277, align 8
  %279 = getelementptr inbounds i32*, i32** %278, i64 1
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %275, i32* %281, align 4
  %282 = load i32, i32* %13, align 4
  %283 = ashr i32 %282, 10
  %284 = and i32 %283, 63
  %285 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %286 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %285, i32 0, i32 3
  %287 = load i32**, i32*** %286, align 8
  %288 = getelementptr inbounds i32*, i32** %287, i64 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 %284, i32* %290, align 4
  %291 = load i64, i64* %10, align 8
  %292 = add nsw i64 %291, 1
  store i64 %292, i64* %10, align 8
  %293 = trunc i64 %291 to i32
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @AR5K_EEPROM_READ(i32 %293, i32 %294)
  %296 = load i32, i32* %13, align 4
  %297 = and i32 %296, 15
  %298 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %299 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %298, i32 0, i32 2
  %300 = load i32**, i32*** %299, align 8
  %301 = getelementptr inbounds i32*, i32** %300, i64 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  store i32 %297, i32* %303, align 4
  %304 = load i32, i32* %13, align 4
  %305 = ashr i32 %304, 4
  %306 = and i32 %305, 63
  %307 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %308 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %307, i32 0, i32 3
  %309 = load i32**, i32*** %308, align 8
  %310 = getelementptr inbounds i32*, i32** %309, i64 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  store i32 %306, i32* %312, align 4
  %313 = load i32, i32* %13, align 4
  %314 = ashr i32 %313, 10
  %315 = and i32 %314, 15
  %316 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %317 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %316, i32 0, i32 2
  %318 = load i32**, i32*** %317, align 8
  %319 = getelementptr inbounds i32*, i32** %318, i64 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  store i32 %315, i32* %321, align 4
  %322 = load i32, i32* %13, align 4
  %323 = ashr i32 %322, 14
  %324 = and i32 %323, 3
  %325 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %326 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %325, i32 0, i32 3
  %327 = load i32**, i32*** %326, align 8
  %328 = getelementptr inbounds i32*, i32** %327, i64 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 2
  store i32 %324, i32* %330, align 4
  %331 = load i64, i64* %10, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %10, align 8
  %333 = trunc i64 %331 to i32
  %334 = load i32, i32* %13, align 4
  %335 = call i32 @AR5K_EEPROM_READ(i32 %333, i32 %334)
  %336 = load i32, i32* %13, align 4
  %337 = and i32 %336, 15
  %338 = shl i32 %337, 2
  %339 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %340 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %339, i32 0, i32 3
  %341 = load i32**, i32*** %340, align 8
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 2
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %338
  store i32 %346, i32* %344, align 4
  %347 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %348 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %347, i32 0, i32 2
  %349 = load i32**, i32*** %348, align 8
  %350 = getelementptr inbounds i32*, i32** %349, i64 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 3
  store i32 0, i32* %352, align 4
  %353 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %354 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %353, i32 0, i32 3
  %355 = load i32**, i32*** %354, align 8
  %356 = getelementptr inbounds i32*, i32** %355, i64 1
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  store i32 0, i32* %358, align 4
  br label %398

359:                                              ; preds = %144
  %360 = load i32, i32* %14, align 4
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %397

362:                                              ; preds = %359
  %363 = load i32, i32* %13, align 4
  %364 = ashr i32 %363, 10
  %365 = and i32 %364, 15
  %366 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %367 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %366, i32 0, i32 2
  %368 = load i32**, i32*** %367, align 8
  %369 = getelementptr inbounds i32*, i32** %368, i64 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 3
  store i32 %365, i32* %371, align 4
  %372 = load i32, i32* %13, align 4
  %373 = ashr i32 %372, 14
  %374 = and i32 %373, 3
  %375 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %376 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %375, i32 0, i32 3
  %377 = load i32**, i32*** %376, align 8
  %378 = getelementptr inbounds i32*, i32** %377, i64 0
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 3
  store i32 %374, i32* %380, align 4
  %381 = load i64, i64* %10, align 8
  %382 = add nsw i64 %381, 1
  store i64 %382, i64* %10, align 8
  %383 = trunc i64 %381 to i32
  %384 = load i32, i32* %13, align 4
  %385 = call i32 @AR5K_EEPROM_READ(i32 %383, i32 %384)
  %386 = load i32, i32* %13, align 4
  %387 = and i32 %386, 15
  %388 = shl i32 %387, 2
  %389 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %390 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %389, i32 0, i32 3
  %391 = load i32**, i32*** %390, align 8
  %392 = getelementptr inbounds i32*, i32** %391, i64 0
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 3
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %395, %388
  store i32 %396, i32* %394, align 4
  br label %397

397:                                              ; preds = %362, %359
  br label %398

398:                                              ; preds = %397, %244
  %399 = load i32, i32* %14, align 4
  %400 = icmp sgt i32 %399, 2
  br i1 %400, label %401, label %503

401:                                              ; preds = %398
  %402 = load i32, i32* %13, align 4
  %403 = ashr i32 %402, 4
  %404 = and i32 %403, 31
  %405 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %406 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 2
  store i32 %404, i32* %408, align 4
  %409 = load i32, i32* %13, align 4
  %410 = ashr i32 %409, 9
  %411 = and i32 %410, 127
  %412 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %413 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 2
  store i32 %411, i32* %415, align 4
  %416 = load i64, i64* %10, align 8
  %417 = add nsw i64 %416, 1
  store i64 %417, i64* %10, align 8
  %418 = trunc i64 %416 to i32
  %419 = load i32, i32* %13, align 4
  %420 = call i32 @AR5K_EEPROM_READ(i32 %418, i32 %419)
  %421 = load i32, i32* %13, align 4
  %422 = ashr i32 %421, 0
  %423 = and i32 %422, 15
  %424 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %425 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %424, i32 0, i32 2
  %426 = load i32**, i32*** %425, align 8
  %427 = getelementptr inbounds i32*, i32** %426, i64 2
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 0
  store i32 %423, i32* %429, align 4
  %430 = load i32, i32* %13, align 4
  %431 = ashr i32 %430, 4
  %432 = and i32 %431, 63
  %433 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %434 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %433, i32 0, i32 3
  %435 = load i32**, i32*** %434, align 8
  %436 = getelementptr inbounds i32*, i32** %435, i64 2
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 0
  store i32 %432, i32* %438, align 4
  %439 = load i32, i32* %13, align 4
  %440 = ashr i32 %439, 10
  %441 = and i32 %440, 15
  %442 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %443 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %442, i32 0, i32 2
  %444 = load i32**, i32*** %443, align 8
  %445 = getelementptr inbounds i32*, i32** %444, i64 2
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 1
  store i32 %441, i32* %447, align 4
  %448 = load i32, i32* %13, align 4
  %449 = ashr i32 %448, 14
  %450 = and i32 %449, 3
  %451 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %452 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %451, i32 0, i32 3
  %453 = load i32**, i32*** %452, align 8
  %454 = getelementptr inbounds i32*, i32** %453, i64 2
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 1
  store i32 %450, i32* %456, align 4
  %457 = load i64, i64* %10, align 8
  %458 = add nsw i64 %457, 1
  store i64 %458, i64* %10, align 8
  %459 = trunc i64 %457 to i32
  %460 = load i32, i32* %13, align 4
  %461 = call i32 @AR5K_EEPROM_READ(i32 %459, i32 %460)
  %462 = load i32, i32* %13, align 4
  %463 = and i32 %462, 15
  %464 = shl i32 %463, 2
  %465 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %466 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %465, i32 0, i32 3
  %467 = load i32**, i32*** %466, align 8
  %468 = getelementptr inbounds i32*, i32** %467, i64 2
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %471, %464
  store i32 %472, i32* %470, align 4
  %473 = load i32, i32* %13, align 4
  %474 = ashr i32 %473, 4
  %475 = and i32 %474, 15
  %476 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %477 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %476, i32 0, i32 2
  %478 = load i32**, i32*** %477, align 8
  %479 = getelementptr inbounds i32*, i32** %478, i64 2
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 2
  store i32 %475, i32* %481, align 4
  %482 = load i32, i32* %13, align 4
  %483 = ashr i32 %482, 8
  %484 = and i32 %483, 63
  %485 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %486 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %485, i32 0, i32 3
  %487 = load i32**, i32*** %486, align 8
  %488 = getelementptr inbounds i32*, i32** %487, i64 2
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 2
  store i32 %484, i32* %490, align 4
  %491 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %492 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %491, i32 0, i32 2
  %493 = load i32**, i32*** %492, align 8
  %494 = getelementptr inbounds i32*, i32** %493, i64 2
  %495 = load i32*, i32** %494, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 3
  store i32 0, i32* %496, align 4
  %497 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %498 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %497, i32 0, i32 3
  %499 = load i32**, i32*** %498, align 8
  %500 = getelementptr inbounds i32*, i32** %499, i64 2
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 3
  store i32 0, i32* %502, align 4
  br label %526

503:                                              ; preds = %398
  %504 = load i32, i32* %14, align 4
  %505 = icmp eq i32 %504, 2
  br i1 %505, label %506, label %525

506:                                              ; preds = %503
  %507 = load i32, i32* %13, align 4
  %508 = ashr i32 %507, 4
  %509 = and i32 %508, 15
  %510 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %511 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %510, i32 0, i32 2
  %512 = load i32**, i32*** %511, align 8
  %513 = getelementptr inbounds i32*, i32** %512, i64 1
  %514 = load i32*, i32** %513, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 3
  store i32 %509, i32* %515, align 4
  %516 = load i32, i32* %13, align 4
  %517 = ashr i32 %516, 8
  %518 = and i32 %517, 63
  %519 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %520 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %519, i32 0, i32 3
  %521 = load i32**, i32*** %520, align 8
  %522 = getelementptr inbounds i32*, i32** %521, i64 1
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 3
  store i32 %518, i32* %524, align 4
  br label %525

525:                                              ; preds = %506, %503
  br label %526

526:                                              ; preds = %525, %401
  %527 = load i32, i32* %14, align 4
  %528 = icmp sgt i32 %527, 3
  br i1 %528, label %529, label %681

529:                                              ; preds = %526
  %530 = load i32, i32* %13, align 4
  %531 = ashr i32 %530, 14
  %532 = and i32 %531, 3
  %533 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %534 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %533, i32 0, i32 0
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 3
  store i32 %532, i32* %536, align 4
  %537 = load i64, i64* %10, align 8
  %538 = add nsw i64 %537, 1
  store i64 %538, i64* %10, align 8
  %539 = trunc i64 %537 to i32
  %540 = load i32, i32* %13, align 4
  %541 = call i32 @AR5K_EEPROM_READ(i32 %539, i32 %540)
  %542 = load i32, i32* %13, align 4
  %543 = ashr i32 %542, 0
  %544 = and i32 %543, 7
  %545 = shl i32 %544, 2
  %546 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %547 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %546, i32 0, i32 0
  %548 = load i32*, i32** %547, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 3
  %550 = load i32, i32* %549, align 4
  %551 = or i32 %550, %545
  store i32 %551, i32* %549, align 4
  %552 = load i32, i32* %13, align 4
  %553 = ashr i32 %552, 3
  %554 = and i32 %553, 127
  %555 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %556 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %555, i32 0, i32 1
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 3
  store i32 %554, i32* %558, align 4
  %559 = load i32, i32* %13, align 4
  %560 = ashr i32 %559, 10
  %561 = and i32 %560, 15
  %562 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %563 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %562, i32 0, i32 2
  %564 = load i32**, i32*** %563, align 8
  %565 = getelementptr inbounds i32*, i32** %564, i64 3
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 0
  store i32 %561, i32* %567, align 4
  %568 = load i32, i32* %13, align 4
  %569 = ashr i32 %568, 14
  %570 = and i32 %569, 3
  %571 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %572 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %571, i32 0, i32 3
  %573 = load i32**, i32*** %572, align 8
  %574 = getelementptr inbounds i32*, i32** %573, i64 3
  %575 = load i32*, i32** %574, align 8
  %576 = getelementptr inbounds i32, i32* %575, i64 0
  store i32 %570, i32* %576, align 4
  %577 = load i64, i64* %10, align 8
  %578 = add nsw i64 %577, 1
  store i64 %578, i64* %10, align 8
  %579 = trunc i64 %577 to i32
  %580 = load i32, i32* %13, align 4
  %581 = call i32 @AR5K_EEPROM_READ(i32 %579, i32 %580)
  %582 = load i32, i32* %13, align 4
  %583 = and i32 %582, 15
  %584 = shl i32 %583, 2
  %585 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %586 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %585, i32 0, i32 3
  %587 = load i32**, i32*** %586, align 8
  %588 = getelementptr inbounds i32*, i32** %587, i64 3
  %589 = load i32*, i32** %588, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 0
  %591 = load i32, i32* %590, align 4
  %592 = or i32 %591, %584
  store i32 %592, i32* %590, align 4
  %593 = load i32, i32* %13, align 4
  %594 = ashr i32 %593, 4
  %595 = and i32 %594, 15
  %596 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %597 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %596, i32 0, i32 2
  %598 = load i32**, i32*** %597, align 8
  %599 = getelementptr inbounds i32*, i32** %598, i64 3
  %600 = load i32*, i32** %599, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 1
  store i32 %595, i32* %601, align 4
  %602 = load i32, i32* %13, align 4
  %603 = ashr i32 %602, 8
  %604 = and i32 %603, 63
  %605 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %606 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %605, i32 0, i32 3
  %607 = load i32**, i32*** %606, align 8
  %608 = getelementptr inbounds i32*, i32** %607, i64 3
  %609 = load i32*, i32** %608, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 1
  store i32 %604, i32* %610, align 4
  %611 = load i32, i32* %13, align 4
  %612 = ashr i32 %611, 14
  %613 = and i32 %612, 3
  %614 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %615 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %614, i32 0, i32 2
  %616 = load i32**, i32*** %615, align 8
  %617 = getelementptr inbounds i32*, i32** %616, i64 3
  %618 = load i32*, i32** %617, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 2
  store i32 %613, i32* %619, align 4
  %620 = load i64, i64* %10, align 8
  %621 = add nsw i64 %620, 1
  store i64 %621, i64* %10, align 8
  %622 = trunc i64 %620 to i32
  %623 = load i32, i32* %13, align 4
  %624 = call i32 @AR5K_EEPROM_READ(i32 %622, i32 %623)
  %625 = load i32, i32* %13, align 4
  %626 = ashr i32 %625, 0
  %627 = and i32 %626, 3
  %628 = shl i32 %627, 2
  %629 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %630 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %629, i32 0, i32 2
  %631 = load i32**, i32*** %630, align 8
  %632 = getelementptr inbounds i32*, i32** %631, i64 3
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 2
  %635 = load i32, i32* %634, align 4
  %636 = or i32 %635, %628
  store i32 %636, i32* %634, align 4
  %637 = load i32, i32* %13, align 4
  %638 = ashr i32 %637, 2
  %639 = and i32 %638, 63
  %640 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %641 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %640, i32 0, i32 3
  %642 = load i32**, i32*** %641, align 8
  %643 = getelementptr inbounds i32*, i32** %642, i64 3
  %644 = load i32*, i32** %643, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 2
  store i32 %639, i32* %645, align 4
  %646 = load i32, i32* %13, align 4
  %647 = ashr i32 %646, 8
  %648 = and i32 %647, 15
  %649 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %650 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %649, i32 0, i32 2
  %651 = load i32**, i32*** %650, align 8
  %652 = getelementptr inbounds i32*, i32** %651, i64 3
  %653 = load i32*, i32** %652, align 8
  %654 = getelementptr inbounds i32, i32* %653, i64 3
  store i32 %648, i32* %654, align 4
  %655 = load i32, i32* %13, align 4
  %656 = ashr i32 %655, 12
  %657 = and i32 %656, 15
  %658 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %659 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %658, i32 0, i32 3
  %660 = load i32**, i32*** %659, align 8
  %661 = getelementptr inbounds i32*, i32** %660, i64 3
  %662 = load i32*, i32** %661, align 8
  %663 = getelementptr inbounds i32, i32* %662, i64 3
  store i32 %657, i32* %663, align 4
  %664 = load i64, i64* %10, align 8
  %665 = add nsw i64 %664, 1
  store i64 %665, i64* %10, align 8
  %666 = trunc i64 %664 to i32
  %667 = load i32, i32* %13, align 4
  %668 = call i32 @AR5K_EEPROM_READ(i32 %666, i32 %667)
  %669 = load i32, i32* %13, align 4
  %670 = ashr i32 %669, 0
  %671 = and i32 %670, 3
  %672 = shl i32 %671, 4
  %673 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %674 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %673, i32 0, i32 3
  %675 = load i32**, i32*** %674, align 8
  %676 = getelementptr inbounds i32*, i32** %675, i64 3
  %677 = load i32*, i32** %676, align 8
  %678 = getelementptr inbounds i32, i32* %677, i64 3
  %679 = load i32, i32* %678, align 4
  %680 = or i32 %679, %672
  store i32 %680, i32* %678, align 4
  br label %721

681:                                              ; preds = %526
  %682 = load i32, i32* %14, align 4
  %683 = icmp eq i32 %682, 3
  br i1 %683, label %684, label %720

684:                                              ; preds = %681
  %685 = load i32, i32* %13, align 4
  %686 = ashr i32 %685, 14
  %687 = and i32 %686, 3
  %688 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %689 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %688, i32 0, i32 2
  %690 = load i32**, i32*** %689, align 8
  %691 = getelementptr inbounds i32*, i32** %690, i64 2
  %692 = load i32*, i32** %691, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 3
  store i32 %687, i32* %693, align 4
  %694 = load i64, i64* %10, align 8
  %695 = add nsw i64 %694, 1
  store i64 %695, i64* %10, align 8
  %696 = trunc i64 %694 to i32
  %697 = load i32, i32* %13, align 4
  %698 = call i32 @AR5K_EEPROM_READ(i32 %696, i32 %697)
  %699 = load i32, i32* %13, align 4
  %700 = ashr i32 %699, 0
  %701 = and i32 %700, 3
  %702 = shl i32 %701, 2
  %703 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %704 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %703, i32 0, i32 2
  %705 = load i32**, i32*** %704, align 8
  %706 = getelementptr inbounds i32*, i32** %705, i64 2
  %707 = load i32*, i32** %706, align 8
  %708 = getelementptr inbounds i32, i32* %707, i64 3
  %709 = load i32, i32* %708, align 4
  %710 = or i32 %709, %702
  store i32 %710, i32* %708, align 4
  %711 = load i32, i32* %13, align 4
  %712 = ashr i32 %711, 2
  %713 = and i32 %712, 63
  %714 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %7, align 8
  %715 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %714, i32 0, i32 3
  %716 = load i32**, i32*** %715, align 8
  %717 = getelementptr inbounds i32*, i32** %716, i64 2
  %718 = load i32*, i32** %717, align 8
  %719 = getelementptr inbounds i32, i32* %718, i64 3
  store i32 %713, i32* %719, align 4
  br label %720

720:                                              ; preds = %684, %681
  br label %721

721:                                              ; preds = %720, %529
  br label %722

722:                                              ; preds = %721
  %723 = load i32, i32* %12, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %12, align 4
  br label %134

725:                                              ; preds = %134
  %726 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %727 = load i32, i32* %5, align 4
  %728 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %8, align 8
  %729 = call i32 @ath5k_eeprom_convert_pcal_info_2413(%struct.ath5k_hw* %726, i32 %727, %struct.ath5k_chan_pcal_info* %728)
  store i32 %729, i32* %3, align 4
  br label %730

730:                                              ; preds = %725, %130, %116, %96, %77, %63
  %731 = load i32, i32* %3, align 4
  ret i32 %731
}

declare dso_local i64 @ath5k_cal_data_offset_2413(%struct.ath5k_eeprom_info*, i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11A(i32) #1

declare dso_local i32 @ath5k_eeprom_init_11a_pcal_freq(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11B(i32) #1

declare dso_local i32 @ath5k_eeprom_init_11bg_2413(%struct.ath5k_hw*, i32, i64) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11G(i32) #1

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i32 @ath5k_eeprom_convert_pcal_info_2413(%struct.ath5k_hw*, i32, %struct.ath5k_chan_pcal_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
