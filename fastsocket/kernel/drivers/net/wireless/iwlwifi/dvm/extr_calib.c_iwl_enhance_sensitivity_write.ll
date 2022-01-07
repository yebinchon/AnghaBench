; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwl_enhance_sensitivity_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwl_enhance_sensitivity_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32*, i32*, %struct.TYPE_4__*, %struct.iwl_sensitivity_data }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_sensitivity_data = type { i32 }
%struct.iwl_enhance_sensitivity_cmd = type { i32*, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@SENSITIVITY_CMD = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_OFDM_DATA_V2 = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_OFDM_INDEX = common dso_local global i64 0, align 8
@HD_INA_NON_SQUARE_DET_CCK_DATA_V2 = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_CCK_INDEX = common dso_local global i64 0, align 8
@HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V2 = common dso_local global i32 0, align 4
@HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX = common dso_local global i64 0, align 8
@HD_INA_NON_SQUARE_DET_OFDM_DATA_V1 = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_CCK_DATA_V1 = common dso_local global i32 0, align 4
@HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V1 = common dso_local global i32 0, align 4
@SENSITIVITY_CMD_CONTROL_WORK_TABLE = common dso_local global i32 0, align 4
@HD_TABLE_SIZE = common dso_local global i32 0, align 4
@ENHANCE_HD_TABLE_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No change in SENSITIVITY_CMD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_enhance_sensitivity_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_enhance_sensitivity_write(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_enhance_sensitivity_cmd, align 8
  %5 = alloca %struct.iwl_sensitivity_data*, align 8
  %6 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_sensitivity_data* null, %struct.iwl_sensitivity_data** %5, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %8 = ptrtoint %struct.iwl_enhance_sensitivity_cmd* %4 to i32
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %10 = load i32, i32* @CMD_ASYNC, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store i32 16, i32* %11, align 4
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %13 = load i32, i32* @SENSITIVITY_CMD, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 3
  store %struct.iwl_sensitivity_data* %15, %struct.iwl_sensitivity_data** %5, align 8
  %16 = call i32 @memset(%struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 16)
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %18 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @iwl_prepare_legacy_sensitivity_tbl(%struct.iwl_priv* %17, %struct.iwl_sensitivity_data* %18, i32* %21)
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %1
  %32 = load i32, i32* @HD_INA_NON_SQUARE_DET_OFDM_DATA_V2, align 4
  %33 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @HD_INA_NON_SQUARE_DET_CCK_DATA_V2, align 4
  %38 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @HD_INA_NON_SQUARE_DET_CCK_INDEX, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V2, align 4
  %43 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V2, align 4
  %48 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2, align 4
  %53 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V2, align 4
  %58 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V2, align 4
  %63 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V2, align 4
  %68 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2, align 4
  %73 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V2, align 4
  %78 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V2, align 4
  %83 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %82, i32* %86, align 4
  br label %143

87:                                               ; preds = %1
  %88 = load i32, i32* @HD_INA_NON_SQUARE_DET_OFDM_DATA_V1, align 4
  %89 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* @HD_INA_NON_SQUARE_DET_CCK_DATA_V1, align 4
  %94 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @HD_INA_NON_SQUARE_DET_CCK_INDEX, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V1, align 4
  %99 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V1, align 4
  %104 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1, align 4
  %109 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V1, align 4
  %114 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V1, align 4
  %119 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V1, align 4
  %124 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1, align 4
  %129 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V1, align 4
  %134 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V1, align 4
  %139 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %87, %31
  %144 = load i32, i32* @SENSITIVITY_CMD_CONTROL_WORK_TABLE, align 4
  %145 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 1
  store i32 %144, i32* %145, align 8
  %146 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %150 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* @HD_TABLE_SIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 4, %154
  %156 = trunc i64 %155 to i32
  %157 = call i32 @memcmp(i32* %148, i32* %152, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %177, label %159

159:                                              ; preds = %143
  %160 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %165 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* @ENHANCE_HD_TABLE_ENTRIES, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 4, %169
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memcmp(i32* %163, i32* %167, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %159
  %175 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %176 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %205

177:                                              ; preds = %159, %143
  %178 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %179 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* @HD_TABLE_SIZE, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 4, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @memcpy(i32* %181, i32* %184, i32 %188)
  %190 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %191 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* @ENHANCE_HD_TABLE_ENTRIES, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 4, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32 @memcpy(i32* %193, i32* %197, i32 %201)
  %203 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %204 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %203, %struct.iwl_host_cmd* %6)
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %177, %174
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @memset(%struct.iwl_enhance_sensitivity_cmd*, i32, i32) #1

declare dso_local i32 @iwl_prepare_legacy_sensitivity_tbl(%struct.iwl_priv*, %struct.iwl_sensitivity_data*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
