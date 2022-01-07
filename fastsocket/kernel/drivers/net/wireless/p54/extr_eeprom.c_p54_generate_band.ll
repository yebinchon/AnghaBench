; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_eeprom.c_p54_generate_band.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_eeprom.c_p54_generate_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.p54_common* }
%struct.p54_common = type { %struct.ieee80211_supported_band**, %struct.TYPE_2__* }
%struct.ieee80211_supported_band = type { i32, i32, i32, %struct.ieee80211_supported_band*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_supported_band* }
%struct.p54_channel_list = type { i32, i32*, %struct.p54_channel_entry* }
%struct.p54_channel_entry = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i32, %struct.ieee80211_channel*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CHAN_HAS_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s%s%s is/are missing for channel:%d [%d MHz].\0A\00", align 1
@CHAN_HAS_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" [iqauto calibration data]\00", align 1
@CHAN_HAS_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c" [output power limits]\00", align 1
@CHAN_HAS_CURVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c" [curve data]\00", align 1
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_TX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Disabling totally damaged %d GHz band\0A\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.p54_channel_list*, i32*, i32)* @p54_generate_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_generate_band(%struct.ieee80211_hw* %0, %struct.p54_channel_list* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.p54_channel_list*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p54_common*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.p54_channel_entry*, align 8
  %17 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.p54_channel_list* %1, %struct.p54_channel_list** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 1
  %20 = load %struct.p54_common*, %struct.p54_common** %19, align 8
  store %struct.p54_common* %20, %struct.p54_common** %10, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %24 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %29 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27, %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %267

39:                                               ; preds = %27
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 32, i32 %40)
  %42 = bitcast i8* %41 to %struct.ieee80211_supported_band*
  store %struct.ieee80211_supported_band* %42, %struct.ieee80211_supported_band** %11, align 8
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %44 = icmp ne %struct.ieee80211_supported_band* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %255

46:                                               ; preds = %39
  %47 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %48 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 32, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kzalloc(i32 %56, i32 %57)
  %59 = bitcast i8* %58 to %struct.ieee80211_supported_band*
  %60 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %60, i32 0, i32 3
  store %struct.ieee80211_supported_band* %59, %struct.ieee80211_supported_band** %61, align 8
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 3
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %63, align 8
  %65 = icmp ne %struct.ieee80211_supported_band* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %46
  br label %255

67:                                               ; preds = %46
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @p54_fill_band_bitrates(%struct.ieee80211_hw* %68, %struct.ieee80211_supported_band* %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %255

75:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %209, %75
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %79 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %77, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %89 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %87, %90
  br label %92

92:                                               ; preds = %86, %76
  %93 = phi i1 [ false, %76 ], [ %91, %86 ]
  br i1 %93, label %94, label %212

94:                                               ; preds = %92
  %95 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %96 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %95, i32 0, i32 2
  %97 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %97, i64 %99
  store %struct.p54_channel_entry* %100, %struct.p54_channel_entry** %16, align 8
  %101 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %102 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %101, i32 0, i32 3
  %103 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %103, i64 %105
  %107 = bitcast %struct.ieee80211_supported_band* %106 to %struct.ieee80211_channel*
  store %struct.ieee80211_channel* %107, %struct.ieee80211_channel** %17, align 8
  %108 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %109 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %94
  br label %209

114:                                              ; preds = %94
  %115 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %116 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CHAN_HAS_ALL, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %114
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %125 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CHAN_HAS_CAL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)
  %132 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %133 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CHAN_HAS_LIMIT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)
  %140 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %141 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CHAN_HAS_CURVE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %148 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %149 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %152 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @wiphy_err(i32 %123, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %131, i8* %139, i8* %147, i32 %150, i32 %153)
  br label %209

155:                                              ; preds = %114
  %156 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %157 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %160 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %162 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %165 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 4
  %166 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %167 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %170 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %172 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %171, i32 0, i32 3
  %173 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %173, i64 %175
  %177 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %178 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  store %struct.ieee80211_supported_band* %176, %struct.ieee80211_supported_band** %184, align 8
  %185 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %186 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_BUSY, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_TX, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %193 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %192, i32 0, i32 1
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store i32 %191, i32* %199, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %203 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %14, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %14, align 4
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %155, %120, %113
  %210 = load i32, i32* %13, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %76

212:                                              ; preds = %92
  %213 = load i32, i32* %14, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %217 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %221 = icmp eq i32 %219, %220
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 2, i32 5
  %224 = call i32 (i32, i8*, ...) @wiphy_err(i32 %218, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @ENODATA, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %15, align 4
  br label %255

227:                                              ; preds = %212
  %228 = load i32, i32* %14, align 4
  %229 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %230 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %232 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %231, i32 0, i32 0
  %233 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %233, i64 %235
  %237 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %236, align 8
  store %struct.ieee80211_supported_band* %237, %struct.ieee80211_supported_band** %12, align 8
  %238 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %239 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %240 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %239, i32 0, i32 0
  %241 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %241, i64 %243
  store %struct.ieee80211_supported_band* %238, %struct.ieee80211_supported_band** %244, align 8
  %245 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %246 = icmp ne %struct.ieee80211_supported_band* %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %227
  %248 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %249 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %248, i32 0, i32 3
  %250 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %249, align 8
  %251 = call i32 @kfree(%struct.ieee80211_supported_band* %250)
  %252 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %253 = call i32 @kfree(%struct.ieee80211_supported_band* %252)
  br label %254

254:                                              ; preds = %247, %227
  store i32 0, i32* %5, align 4
  br label %267

255:                                              ; preds = %215, %74, %66, %45
  %256 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %257 = icmp ne %struct.ieee80211_supported_band* %256, null
  br i1 %257, label %258, label %265

258:                                              ; preds = %255
  %259 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %260 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %259, i32 0, i32 3
  %261 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %260, align 8
  %262 = call i32 @kfree(%struct.ieee80211_supported_band* %261)
  %263 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %264 = call i32 @kfree(%struct.ieee80211_supported_band* %263)
  br label %265

265:                                              ; preds = %258, %255
  %266 = load i32, i32* %15, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %265, %254, %36
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @p54_fill_band_bitrates(%struct.ieee80211_hw*, %struct.ieee80211_supported_band*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.ieee80211_supported_band*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
