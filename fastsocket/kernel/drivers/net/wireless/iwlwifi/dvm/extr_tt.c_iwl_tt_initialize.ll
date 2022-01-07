; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_tt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.iwl_tt_mgmt, %struct.TYPE_5__*, i32, i32, i32 }
%struct.iwl_tt_mgmt = type { i32, i32, %struct.iwl_tt_trans*, %struct.iwl_tt_trans*, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.iwl_tt_trans = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@IWL_TI_STATE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Initialize Thermal Throttling\0A\00", align 1
@IWL_TI_0 = common dso_local global i32 0, align 4
@iwl_tt_check_exit_ct_kill = common dso_local global i32 0, align 4
@iwl_tt_ready_for_ct_kill = common dso_local global i32 0, align 4
@iwl_bg_tt_work = common dso_local global i32 0, align 4
@iwl_bg_ct_enter = common dso_local global i32 0, align 4
@iwl_bg_ct_exit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Advanced Thermal Throttling\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Fallback to Legacy Throttling\0A\00", align 1
@tt_range_0 = common dso_local global i32* null, align 8
@IWL_TI_1 = common dso_local global i32 0, align 4
@tt_range_1 = common dso_local global i32* null, align 8
@IWL_TI_2 = common dso_local global i32 0, align 4
@tt_range_2 = common dso_local global i32* null, align 8
@IWL_TI_CT_KILL = common dso_local global i32 0, align 4
@tt_range_3 = common dso_local global i32* null, align 8
@restriction_range = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Legacy Thermal Throttling\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_tt_initialize(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_tt_mgmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_tt_trans*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 0
  store %struct.iwl_tt_mgmt* %7, %struct.iwl_tt_mgmt** %3, align 8
  %8 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %14 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %16 = call i32 @memset(%struct.iwl_tt_mgmt* %15, i32 0, i32 56)
  %17 = load i32, i32* @IWL_TI_0, align 4
  %18 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %21, i32 0, i32 5
  %23 = call i32 @init_timer(%struct.TYPE_6__* %22)
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = ptrtoint %struct.iwl_priv* %24 to i64
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load i32, i32* @iwl_tt_check_exit_ct_kill, align 4
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 8
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %36, i32 0, i32 4
  %38 = call i32 @init_timer(%struct.TYPE_6__* %37)
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %40 = ptrtoint %struct.iwl_priv* %39 to i64
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  %45 = load i32, i32* @iwl_tt_ready_for_ct_kill, align 4
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 4
  %52 = load i32, i32* @iwl_bg_tt_work, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 3
  %56 = load i32, i32* @iwl_bg_ct_enter, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 2
  %60 = load i32, i32* @iwl_bg_ct_exit, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %63 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %187

70:                                               ; preds = %1
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %72 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kcalloc(i32 %73, i32 4, i32 %74)
  %76 = bitcast i8* %75 to %struct.iwl_tt_trans*
  %77 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %78 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %77, i32 0, i32 2
  store %struct.iwl_tt_trans* %76, %struct.iwl_tt_trans** %78, align 8
  %79 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %80 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %79, %81
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @kcalloc(i32 %82, i32 4, i32 %83)
  %85 = bitcast i8* %84 to %struct.iwl_tt_trans*
  %86 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %86, i32 0, i32 3
  store %struct.iwl_tt_trans* %85, %struct.iwl_tt_trans** %87, align 8
  %88 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %89 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %88, i32 0, i32 2
  %90 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %89, align 8
  %91 = icmp ne %struct.iwl_tt_trans* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %70
  %93 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %93, i32 0, i32 3
  %95 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %94, align 8
  %96 = icmp ne %struct.iwl_tt_trans* %95, null
  br i1 %96, label %115, label %97

97:                                               ; preds = %92, %70
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %99 = call i32 @IWL_ERR(%struct.iwl_priv* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %101 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %104 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %103, i32 0, i32 2
  %105 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %104, align 8
  %106 = call i32 @kfree(%struct.iwl_tt_trans* %105)
  %107 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %108 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %107, i32 0, i32 2
  store %struct.iwl_tt_trans* null, %struct.iwl_tt_trans** %108, align 8
  %109 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %110 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %109, i32 0, i32 3
  %111 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %110, align 8
  %112 = call i32 @kfree(%struct.iwl_tt_trans* %111)
  %113 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %114 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %113, i32 0, i32 3
  store %struct.iwl_tt_trans* null, %struct.iwl_tt_trans** %114, align 8
  br label %186

115:                                              ; preds = %92
  %116 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %117 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %116, i32 0, i32 3
  %118 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %117, align 8
  %119 = load i32, i32* @IWL_TI_0, align 4
  %120 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %121 = sub nsw i32 %120, 1
  %122 = mul nsw i32 %119, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %118, i64 %123
  store %struct.iwl_tt_trans* %124, %struct.iwl_tt_trans** %5, align 8
  %125 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %126 = load i32*, i32** @tt_range_0, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @memcpy(%struct.iwl_tt_trans* %125, i32* %127, i32 %128)
  %130 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %131 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %130, i32 0, i32 3
  %132 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %131, align 8
  %133 = load i32, i32* @IWL_TI_1, align 4
  %134 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %135 = sub nsw i32 %134, 1
  %136 = mul nsw i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %132, i64 %137
  store %struct.iwl_tt_trans* %138, %struct.iwl_tt_trans** %5, align 8
  %139 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %140 = load i32*, i32** @tt_range_1, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @memcpy(%struct.iwl_tt_trans* %139, i32* %141, i32 %142)
  %144 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %145 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %144, i32 0, i32 3
  %146 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %145, align 8
  %147 = load i32, i32* @IWL_TI_2, align 4
  %148 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %149 = sub nsw i32 %148, 1
  %150 = mul nsw i32 %147, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %146, i64 %151
  store %struct.iwl_tt_trans* %152, %struct.iwl_tt_trans** %5, align 8
  %153 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %154 = load i32*, i32** @tt_range_2, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @memcpy(%struct.iwl_tt_trans* %153, i32* %155, i32 %156)
  %158 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %159 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %158, i32 0, i32 3
  %160 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %159, align 8
  %161 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %162 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %163 = sub nsw i32 %162, 1
  %164 = mul nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %160, i64 %165
  store %struct.iwl_tt_trans* %166, %struct.iwl_tt_trans** %5, align 8
  %167 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %168 = load i32*, i32** @tt_range_3, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @memcpy(%struct.iwl_tt_trans* %167, i32* %169, i32 %170)
  %172 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 4, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %4, align 4
  %176 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %177 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %176, i32 0, i32 2
  %178 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %177, align 8
  %179 = load i32*, i32** @restriction_range, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @memcpy(%struct.iwl_tt_trans* %178, i32* %180, i32 %181)
  %183 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %184 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %115, %97
  br label %193

187:                                              ; preds = %1
  %188 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %189 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %190 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %191 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %191, i32 0, i32 1
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %187, %186
  ret void
}

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memset(%struct.iwl_tt_mgmt*, i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @kfree(%struct.iwl_tt_trans*) #1

declare dso_local i32 @memcpy(%struct.iwl_tt_trans*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
