; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_fill_txpower_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_fill_txpower_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.il_priv = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32**, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.il4965_tx_power_db = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.il_channel_info = type { i32, i32 }
%struct.il_eeprom_calib_ch_info = type { %struct.il_eeprom_calib_measure** }
%struct.il_eeprom_calib_measure = type { i32, i32, i32 }
%union.il4965_tx_power_dual_stream = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32* }

@CALIB_CH_GROUP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"chan %d band %d is_ht40 %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't find txatten group for channel %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"channel %d belongs to txatten group %d\0A\00", align 1
@IL_TX_POWER_SATURATION_MIN = common dso_local global i64 0, align 8
@IL_TX_POWER_SATURATION_MAX = common dso_local global i64 0, align 8
@IL_TX_POWER_DEFAULT_SATURATION_24 = common dso_local global i64 0, align 8
@IL_TX_POWER_DEFAULT_SATURATION_52 = common dso_local global i64 0, align 8
@IL_TX_POWER_REGULATORY_MIN = common dso_local global i32 0, align 4
@IL_TX_POWER_REGULATORY_MAX = common dso_local global i32 0, align 4
@IL_TX_POWER_DEFAULT_REGULATORY_24 = common dso_local global i32 0, align 4
@IL_TX_POWER_DEFAULT_REGULATORY_52 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"curr volt %d eeprom volt %d volt comp %d\0A\00", align 1
@IL_TX_POWER_TEMPERATURE_MIN = common dso_local global i32 0, align 4
@IL_TX_POWER_TEMPERATURE_MAX = common dso_local global i32 0, align 4
@tx_power_cmp_tble = common dso_local global %struct.TYPE_11__* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"chain = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"fctry tmp %d, curr tmp %d, comp %d steps\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"fctry idx %d, fctry pwr %d\0A\00", align 1
@POWER_TBL_NUM_ENTRIES = common dso_local global i32 0, align 4
@IL_TX_POWER_MIMO_REGULATORY_COMPENSATION = common dso_local global i32 0, align 4
@back_off_table = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"rate %d sat %d reg %d usr %d tgt %d\0A\00", align 1
@POWER_TBL_CCK_ENTRY = common dso_local global i32 0, align 4
@IL_TX_POWER_CCK_COMPENSATION_C_STEP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"txpower idx %d > 107\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"txpower idx %d < 0\0A\00", align 1
@gain_table = common dso_local global %struct.TYPE_12__** null, align 8
@.str.10 = private unnamed_addr constant [44 x i8] c"chain %d mimo %d idx %d gain 0x%02x dsp %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i64, i32, i64, i64, %struct.il4965_tx_power_db*)* @il4965_fill_txpower_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_fill_txpower_tbl(%struct.il_priv* %0, i64 %1, i32 %2, i64 %3, i64 %4, %struct.il4965_tx_power_db* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.il4965_tx_power_db*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.il_channel_info*, align 8
  %25 = alloca %struct.il_eeprom_calib_ch_info, align 8
  %26 = alloca %struct.il_eeprom_calib_measure*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [2 x i32], align 4
  %34 = alloca [2 x i32], align 4
  %35 = alloca [2 x i32], align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca %union.il4965_tx_power_dual_stream, align 8
  %39 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.il4965_tx_power_db* %5, %struct.il4965_tx_power_db** %13, align 8
  %40 = load i32, i32* @CALIB_CH_GROUP_MAX, align 4
  store i32 %40, i32* %21, align 4
  store %struct.il_channel_info* null, %struct.il_channel_info** %24, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 2, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %46, i64 %47)
  %49 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %50 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.il_channel_info* @il_get_channel_info(%struct.il_priv* %49, i32 %52, i32 %53)
  store %struct.il_channel_info* %54, %struct.il_channel_info** %24, align 8
  %55 = load %struct.il_channel_info*, %struct.il_channel_info** %24, align 8
  %56 = call i32 @il_is_channel_valid(%struct.il_channel_info* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %6
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %448

61:                                               ; preds = %6
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @il4965_get_tx_atten_grp(i32 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @IL_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %7, align 4
  br label %448

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %21, align 4
  %73 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %10, align 4
  br label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %14, align 8
  br label %101

95:                                               ; preds = %86
  %96 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %14, align 8
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @IL_TX_POWER_SATURATION_MIN, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* @IL_TX_POWER_SATURATION_MAX, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105, %101
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* @IL_TX_POWER_DEFAULT_SATURATION_24, align 8
  store i64 %113, i64* %14, align 8
  br label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @IL_TX_POWER_DEFAULT_SATURATION_52, align 8
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %114, %112
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.il_channel_info*, %struct.il_channel_info** %24, align 8
  %122 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 2
  store i32 %124, i32* %19, align 4
  br label %130

125:                                              ; preds = %117
  %126 = load %struct.il_channel_info*, %struct.il_channel_info** %24, align 8
  %127 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 2
  store i32 %129, i32* %19, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* @IL_TX_POWER_REGULATORY_MIN, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* @IL_TX_POWER_REGULATORY_MAX, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134, %130
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @IL_TX_POWER_DEFAULT_REGULATORY_24, align 4
  store i32 %142, i32* %19, align 4
  br label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @IL_TX_POWER_DEFAULT_REGULATORY_52, align 4
  store i32 %144, i32* %19, align 4
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %134
  %147 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @il4965_interpolate_chan(%struct.il_priv* %147, i32 %148, %struct.il_eeprom_calib_ch_info* %25)
  %150 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %151 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %150, i32 0, i32 3
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @le16_to_cpu(i32 %154)
  store i32 %155, i32* %27, align 4
  %156 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %157 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @le32_to_cpu(i32 %159)
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %28, align 4
  %162 = load i32, i32* %27, align 4
  %163 = load i32, i32* %28, align 4
  %164 = call i32 @il4965_get_voltage_compensation(i32 %162, i32 %163)
  store i32 %164, i32* %29, align 4
  %165 = load i32, i32* %28, align 4
  %166 = load i32, i32* %27, align 4
  %167 = load i32, i32* %29, align 4
  %168 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 %166, i32 %167)
  %169 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %170 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @IL_TX_POWER_TEMPERATURE_MIN, align 4
  %173 = call i32 @max(i32 %171, i32 %172)
  store i32 %173, i32* %18, align 4
  %174 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %175 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IL_TX_POWER_TEMPERATURE_MAX, align 4
  %178 = call i32 @min(i32 %176, i32 %177)
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @KELVIN_TO_CELSIUS(i32 %179)
  store i32 %180, i32* %18, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tx_power_cmp_tble, align 8
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %30, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tx_power_cmp_tble, align 8
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %31, align 4
  store i32 0, i32* %23, align 4
  br label %193

193:                                              ; preds = %247, %146
  %194 = load i32, i32* %23, align 4
  %195 = icmp slt i32 %194, 2
  br i1 %195, label %196, label %250

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, %struct.il_eeprom_calib_ch_info* %25, i32 0, i32 0
  %198 = load %struct.il_eeprom_calib_measure**, %struct.il_eeprom_calib_measure*** %197, align 8
  %199 = load i32, i32* %23, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %198, i64 %200
  %202 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %201, align 8
  %203 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %202, i64 1
  store %struct.il_eeprom_calib_measure* %203, %struct.il_eeprom_calib_measure** %26, align 8
  %204 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %26, align 8
  %205 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %32, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %32, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load i32, i32* %31, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* %30, align 4
  %213 = load i32, i32* %23, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 %214
  %216 = call i32 @il4965_math_div_round(i32 %211, i32 %212, i32* %215)
  %217 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %26, align 8
  %218 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %23, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 %221
  store i32 %219, i32* %222, align 4
  %223 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %26, align 8
  %224 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %23, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 %227
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* %23, align 4
  %230 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %32, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %23, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %231, i32 %232, i32 %236)
  %238 = load i32, i32* %23, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %23, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %241, i32 %245)
  br label %247

247:                                              ; preds = %196
  %248 = load i32, i32* %23, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %23, align 4
  br label %193

250:                                              ; preds = %193
  store i32 0, i32* %22, align 4
  br label %251

251:                                              ; preds = %444, %250
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* @POWER_TBL_NUM_ENTRIES, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %447

255:                                              ; preds = %251
  %256 = load i32, i32* %22, align 4
  %257 = and i32 %256, 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* @IL_TX_POWER_MIMO_REGULATORY_COMPENSATION, align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %20, align 4
  store i64 1, i64* %37, align 8
  br label %265

263:                                              ; preds = %255
  %264 = load i32, i32* %19, align 4
  store i32 %264, i32* %20, align 4
  store i64 0, i64* %37, align 8
  br label %265

265:                                              ; preds = %263, %259
  %266 = load i64, i64* %14, align 8
  %267 = load i64*, i64** @back_off_table, align 8
  %268 = load i32, i32* %22, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %267, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = sub nsw i64 %266, %271
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %17, align 4
  %274 = load i32, i32* %17, align 4
  %275 = load i32, i32* %20, align 4
  %276 = icmp sgt i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %265
  %278 = load i32, i32* %20, align 4
  store i32 %278, i32* %17, align 4
  br label %279

279:                                              ; preds = %277, %265
  %280 = load i32, i32* %16, align 4
  store i32 %280, i32* %15, align 4
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %17, align 4
  %283 = icmp sgt i32 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load i32, i32* %17, align 4
  store i32 %285, i32* %15, align 4
  br label %286

286:                                              ; preds = %284, %279
  %287 = load i32, i32* %22, align 4
  %288 = load i64, i64* %14, align 8
  %289 = load i64*, i64** @back_off_table, align 8
  %290 = load i32, i32* %22, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = sub nsw i64 %288, %293
  %295 = load i32, i32* %20, align 4
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* %15, align 4
  %298 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %287, i64 %294, i32 %295, i32 %296, i32 %297)
  store i32 0, i32* %23, align 4
  br label %299

299:                                              ; preds = %430, %286
  %300 = load i32, i32* %23, align 4
  %301 = icmp slt i32 %300, 2
  br i1 %301, label %302, label %433

302:                                              ; preds = %299
  %303 = load i64, i64* %37, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %320

305:                                              ; preds = %302
  %306 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %307 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %21, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %23, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i64 @le32_to_cpu(i32 %317)
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %39, align 4
  br label %321

320:                                              ; preds = %302
  store i32 0, i32* %39, align 4
  br label %321

321:                                              ; preds = %320, %305
  %322 = load i32, i32* %23, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %23, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = sub nsw i32 %326, %330
  %332 = sub nsw i32 %325, %331
  %333 = load i32, i32* %23, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = sub nsw i32 %332, %336
  %338 = load i32, i32* %29, align 4
  %339 = sub nsw i32 %337, %338
  %340 = load i32, i32* %39, align 4
  %341 = add nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %36, align 4
  %344 = load i32, i32* %36, align 4
  %345 = load i32, i32* %22, align 4
  %346 = load i64, i64* %9, align 8
  %347 = call i32 @get_min_power_idx(i32 %345, i64 %346)
  %348 = icmp slt i32 %344, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %321
  %350 = load i32, i32* %22, align 4
  %351 = load i64, i64* %9, align 8
  %352 = call i32 @get_min_power_idx(i32 %350, i64 %351)
  store i32 %352, i32* %36, align 4
  br label %353

353:                                              ; preds = %349, %321
  %354 = load i64, i64* %9, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %353
  %357 = load i32, i32* %36, align 4
  %358 = add nsw i32 %357, 9
  store i32 %358, i32* %36, align 4
  br label %359

359:                                              ; preds = %356, %353
  %360 = load i32, i32* %22, align 4
  %361 = load i32, i32* @POWER_TBL_CCK_ENTRY, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %369

363:                                              ; preds = %359
  %364 = load i64, i64* @IL_TX_POWER_CCK_COMPENSATION_C_STEP, align 8
  %365 = load i32, i32* %36, align 4
  %366 = sext i32 %365 to i64
  %367 = add nsw i64 %366, %364
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %36, align 4
  br label %369

369:                                              ; preds = %363, %359
  %370 = load i32, i32* %36, align 4
  %371 = icmp sgt i32 %370, 107
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load i32, i32* %36, align 4
  %374 = call i32 @IL_WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %373)
  store i32 107, i32* %36, align 4
  br label %375

375:                                              ; preds = %372, %369
  %376 = load i32, i32* %36, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load i32, i32* %36, align 4
  %380 = call i32 @IL_WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %379)
  store i32 0, i32* %36, align 4
  br label %381

381:                                              ; preds = %378, %375
  %382 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @gain_table, align 8
  %383 = load i64, i64* %9, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %382, i64 %383
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %384, align 8
  %386 = load i32, i32* %36, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = bitcast %union.il4965_tx_power_dual_stream* %38 to %struct.TYPE_10__*
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 0
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %23, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  store i32 %390, i32* %396, align 4
  %397 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @gain_table, align 8
  %398 = load i64, i64* %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %397, i64 %398
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %399, align 8
  %401 = load i32, i32* %36, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = bitcast %union.il4965_tx_power_dual_stream* %38 to %struct.TYPE_10__*
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 1
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %23, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  store i32 %405, i32* %411, align 4
  %412 = load i32, i32* %23, align 4
  %413 = load i32, i32* %39, align 4
  %414 = load i32, i32* %36, align 4
  %415 = bitcast %union.il4965_tx_power_dual_stream* %38 to %struct.TYPE_10__*
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 0
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %23, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = bitcast %union.il4965_tx_power_dual_stream* %38 to %struct.TYPE_10__*
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 1
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %23, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i8*, i32, ...) @D_TXPOWER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %412, i32 %413, i32 %414, i32 %421, i32 %428)
  br label %430

430:                                              ; preds = %381
  %431 = load i32, i32* %23, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %23, align 4
  br label %299

433:                                              ; preds = %299
  %434 = bitcast %union.il4965_tx_power_dual_stream* %38 to i32*
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @cpu_to_le32(i32 %435)
  %437 = load %struct.il4965_tx_power_db*, %struct.il4965_tx_power_db** %13, align 8
  %438 = getelementptr inbounds %struct.il4965_tx_power_db, %struct.il4965_tx_power_db* %437, i32 0, i32 0
  %439 = load %struct.TYPE_7__*, %struct.TYPE_7__** %438, align 8
  %440 = load i32, i32* %22, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 0
  store i32 %436, i32* %443, align 4
  br label %444

444:                                              ; preds = %433
  %445 = load i32, i32* %22, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %22, align 4
  br label %251

447:                                              ; preds = %251
  store i32 0, i32* %7, align 4
  br label %448

448:                                              ; preds = %447, %66, %58
  %449 = load i32, i32* %7, align 4
  ret i32 %449
}

declare dso_local i32 @D_TXPOWER(i8*, i32, ...) #1

declare dso_local %struct.il_channel_info* @il_get_channel_info(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_is_channel_valid(%struct.il_channel_info*) #1

declare dso_local i32 @il4965_get_tx_atten_grp(i32) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @il4965_interpolate_chan(%struct.il_priv*, i32, %struct.il_eeprom_calib_ch_info*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @il4965_get_voltage_compensation(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @KELVIN_TO_CELSIUS(i32) #1

declare dso_local i32 @il4965_math_div_round(i32, i32, i32*) #1

declare dso_local i32 @get_min_power_idx(i32, i64) #1

declare dso_local i32 @IL_WARN(i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
