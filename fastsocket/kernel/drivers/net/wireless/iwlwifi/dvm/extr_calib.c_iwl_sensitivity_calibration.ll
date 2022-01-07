; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwl_sensitivity_calibration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwl_sensitivity_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.iwl_sensitivity_data }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.statistics_rx_phy, %struct.statistics_rx_phy, %struct.statistics_rx_non_phy }
%struct.statistics_rx_phy = type { i32, i32 }
%struct.statistics_rx_non_phy = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_sensitivity_data = type { i64, i64, i64, i64 }
%struct.statistics_general_data = type { i8*, i8*, i8*, i8*, i8*, i8* }

@IWL_SENSITIVITY_CALIB_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"<< - not associated\0A\00", align 1
@INTERFERENCE_DATA_AVAILABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"<< invalid data.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"rx_enable_time = %u usecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"<< RX Enable Time == 0!\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"cck: fa %u badp %u  ofdm: fa %u badp %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_sensitivity_calibration(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iwl_sensitivity_data*, align 8
  %11 = alloca %struct.statistics_rx_non_phy*, align 8
  %12 = alloca %struct.statistics_rx_phy*, align 8
  %13 = alloca %struct.statistics_rx_phy*, align 8
  %14 = alloca %struct.statistics_general_data, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  store %struct.iwl_sensitivity_data* null, %struct.iwl_sensitivity_data** %10, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IWL_SENSITIVITY_CALIB_DISABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %242

22:                                               ; preds = %1
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 3
  store %struct.iwl_sensitivity_data* %24, %struct.iwl_sensitivity_data** %10, align 8
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %26 = call i32 @iwl_is_any_associated(%struct.iwl_priv* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %30 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %242

31:                                               ; preds = %22
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %37 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store %struct.statistics_rx_non_phy* %38, %struct.statistics_rx_non_phy** %11, align 8
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store %struct.statistics_rx_phy* %41, %struct.statistics_rx_phy** %12, align 8
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store %struct.statistics_rx_phy* %44, %struct.statistics_rx_phy** %13, align 8
  %45 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %46 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INTERFERENCE_DATA_AVAILABLE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %31
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %52 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  br label %242

57:                                               ; preds = %31
  %58 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %59 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @le32_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %3, align 8
  %63 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %13, align 8
  %64 = getelementptr inbounds %struct.statistics_rx_phy, %struct.statistics_rx_phy* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le32_to_cpu(i32 %65)
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %4, align 8
  %68 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %12, align 8
  %69 = getelementptr inbounds %struct.statistics_rx_phy, %struct.statistics_rx_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %5, align 8
  %73 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %13, align 8
  %74 = getelementptr inbounds %struct.statistics_rx_phy, %struct.statistics_rx_phy* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = ptrtoint i8* %76 to i64
  store i64 %77, i64* %6, align 8
  %78 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %12, align 8
  %79 = getelementptr inbounds %struct.statistics_rx_phy, %struct.statistics_rx_phy* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le32_to_cpu(i32 %80)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %7, align 8
  %83 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %84 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le32_to_cpu(i32 %85)
  %87 = getelementptr inbounds %struct.statistics_general_data, %struct.statistics_general_data* %14, i32 0, i32 5
  store i8* %86, i8** %87, align 8
  %88 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %89 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = getelementptr inbounds %struct.statistics_general_data, %struct.statistics_general_data* %14, i32 0, i32 4
  store i8* %91, i8** %92, align 8
  %93 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %94 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = getelementptr inbounds %struct.statistics_general_data, %struct.statistics_general_data* %14, i32 0, i32 3
  store i8* %96, i8** %97, align 8
  %98 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %99 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = getelementptr inbounds %struct.statistics_general_data, %struct.statistics_general_data* %14, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %104 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = getelementptr inbounds %struct.statistics_general_data, %struct.statistics_general_data* %14, i32 0, i32 1
  store i8* %106, i8** %107, align 8
  %108 = load %struct.statistics_rx_non_phy*, %struct.statistics_rx_non_phy** %11, align 8
  %109 = getelementptr inbounds %struct.statistics_rx_non_phy, %struct.statistics_rx_non_phy* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = getelementptr inbounds %struct.statistics_general_data, %struct.statistics_general_data* %14, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %114 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock_bh(i32* %115)
  %117 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %118 = load i64, i64* %3, align 8
  %119 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  %120 = load i64, i64* %3, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %57
  %123 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %124 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %242

125:                                              ; preds = %57
  %126 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %127 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %134 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %146

135:                                              ; preds = %125
  %136 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %137 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = sub nsw i64 %139, %138
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %143 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %135, %131
  %147 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %148 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %7, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i64, i64* %7, align 8
  %154 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %155 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %167

156:                                              ; preds = %146
  %157 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %158 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %7, align 8
  %161 = sub nsw i64 %160, %159
  store i64 %161, i64* %7, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %164 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, %162
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %156, %152
  %168 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %169 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %5, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i64, i64* %5, align 8
  %175 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %176 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %175, i32 0, i32 2
  store i64 %174, i64* %176, align 8
  br label %188

177:                                              ; preds = %167
  %178 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %179 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = sub nsw i64 %181, %180
  store i64 %182, i64* %5, align 8
  %183 = load i64, i64* %5, align 8
  %184 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %185 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  br label %188

188:                                              ; preds = %177, %173
  %189 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %190 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %4, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i64, i64* %4, align 8
  %196 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %197 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  br label %209

198:                                              ; preds = %188
  %199 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %200 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %4, align 8
  %203 = sub nsw i64 %202, %201
  store i64 %203, i64* %4, align 8
  %204 = load i64, i64* %4, align 8
  %205 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %10, align 8
  %206 = getelementptr inbounds %struct.iwl_sensitivity_data, %struct.iwl_sensitivity_data* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %198, %194
  %210 = load i64, i64* %5, align 8
  %211 = load i64, i64* %7, align 8
  %212 = add nsw i64 %210, %211
  store i64 %212, i64* %8, align 8
  %213 = load i64, i64* %4, align 8
  %214 = load i64, i64* %6, align 8
  %215 = add nsw i64 %213, %214
  store i64 %215, i64* %9, align 8
  %216 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %217 = load i64, i64* %4, align 8
  %218 = load i64, i64* %6, align 8
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* %7, align 8
  %221 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %216, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %217, i64 %218, i64 %219, i64 %220)
  %222 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* %3, align 8
  %225 = call i32 @iwl_sens_auto_corr_ofdm(%struct.iwl_priv* %222, i64 %223, i64 %224)
  %226 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %227 = load i64, i64* %9, align 8
  %228 = load i64, i64* %3, align 8
  %229 = call i32 @iwl_sens_energy_cck(%struct.iwl_priv* %226, i64 %227, i64 %228, %struct.statistics_general_data* %14)
  %230 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %231 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %230, i32 0, i32 1
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %209
  %237 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %238 = call i32 @iwl_enhance_sensitivity_write(%struct.iwl_priv* %237)
  br label %242

239:                                              ; preds = %209
  %240 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %241 = call i32 @iwl_sensitivity_write(%struct.iwl_priv* %240)
  br label %242

242:                                              ; preds = %21, %28, %50, %122, %239, %236
  ret void
}

declare dso_local i32 @iwl_is_any_associated(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_sens_auto_corr_ofdm(%struct.iwl_priv*, i64, i64) #1

declare dso_local i32 @iwl_sens_energy_cck(%struct.iwl_priv*, i64, i64, %struct.statistics_general_data*) #1

declare dso_local i32 @iwl_enhance_sensitivity_write(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_sensitivity_write(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
