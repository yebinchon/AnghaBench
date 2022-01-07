; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.pg_help_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.cos_help_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i8* }

@DCBX_MAX_NUM_PG_BW_ENTRIES = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_FCOE = common dso_local global i64 0, align 8
@BNX2X_DCBX_STRICT_COS_HIGHEST = common dso_local global i8* null, align 8
@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Invalid value for pri_join_mask - could not find a priority\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.pg_help_data*, %struct.cos_help_data*, i32, i32)* @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params(%struct.bnx2x* %0, %struct.pg_help_data* %1, %struct.cos_help_data* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.pg_help_data*, align 8
  %8 = alloca %struct.cos_help_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.pg_help_data* %1, %struct.pg_help_data** %7, align 8
  store %struct.cos_help_data* %2, %struct.cos_help_data** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @bnx2x_dcbx_ets_disabled_entry_data(%struct.bnx2x* %23, %struct.cos_help_data* %24, i32 %25)
  br label %295

27:                                               ; preds = %5
  %28 = load %struct.pg_help_data*, %struct.pg_help_data** %7, align 8
  %29 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DCBX_MAX_NUM_PG_BW_ENTRIES, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %169

36:                                               ; preds = %27
  %37 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @IS_DCBX_PFC_PRI_MIX_PAUSE(%struct.bnx2x* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  %42 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %43 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %48 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 2, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %41
  %55 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %56 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 50, i32* %59, align 4
  %60 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %61 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 50, i32* %64, align 4
  br label %65

65:                                               ; preds = %54, %41
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 3, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %65
  %69 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @DCBX_PFC_PRI_GET_PAUSE(%struct.bnx2x* %69, i32 %70)
  %72 = call i64 @POWER_OF_2(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %76 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 33, i32* %79, align 4
  %80 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %81 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 67, i32* %84, align 4
  br label %96

85:                                               ; preds = %68
  %86 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %87 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 67, i32* %90, align 4
  %91 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %92 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32 33, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %74
  br label %97

97:                                               ; preds = %96, %65
  br label %168

98:                                               ; preds = %36
  %99 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @IS_DCBX_PFC_PRI_ONLY_PAUSE(%struct.bnx2x* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 2, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %108 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 50, i32* %111, align 4
  %112 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %113 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32 50, i32* %116, align 4
  br label %128

117:                                              ; preds = %103
  %118 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %119 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 67, i32* %122, align 4
  %123 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %124 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i32 33, i32* %127, align 4
  br label %128

128:                                              ; preds = %117, %106
  %129 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %130 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %135 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = load i64, i64* @LLFC_TRAFFIC_TYPE_FCOE, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 1, %143
  %145 = xor i32 %144, -1
  %146 = and i32 %139, %145
  %147 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %148 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  store i32 %146, i32* %151, align 8
  %152 = load i32*, i32** %14, align 8
  %153 = load i64, i64* @LLFC_TRAFFIC_TYPE_FCOE, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 1, %155
  %157 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %158 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  store i32 %156, i32* %161, align 8
  br label %167

162:                                              ; preds = %98
  %163 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %164 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @bnx2x_dcbx_ets_disabled_entry_data(%struct.bnx2x* %163, %struct.cos_help_data* %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %128
  br label %168

168:                                              ; preds = %167, %97
  br label %295

169:                                              ; preds = %27
  %170 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i64 @IS_DCBX_PFC_PRI_MIX_PAUSE(%struct.bnx2x* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %221

174:                                              ; preds = %169
  %175 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i64 @DCBX_PFC_PRI_GET_PAUSE(%struct.bnx2x* %175, i32 %176)
  %178 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i64 @DCBX_PFC_PRI_GET_NON_PAUSE(%struct.bnx2x* %178, i32 %179)
  %181 = icmp sgt i64 %177, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %174
  %183 = load i8*, i8** @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %184 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %185 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  store i8* %183, i8** %188, align 8
  %189 = load i8*, i8** @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %190 = call i8* @BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(i8* %189)
  %191 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %192 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 3
  store i8* %190, i8** %195, align 8
  br label %210

196:                                              ; preds = %174
  %197 = load i8*, i8** @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %198 = call i8* @BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(i8* %197)
  %199 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %200 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %199, i32 0, i32 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  store i8* %198, i8** %203, align 8
  %204 = load i8*, i8** @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %205 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %206 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %205, i32 0, i32 0
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  store i8* %204, i8** %209, align 8
  br label %210

210:                                              ; preds = %196, %182
  %211 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %212 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %211, i32 0, i32 0
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  %216 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %217 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  br label %294

221:                                              ; preds = %169
  %222 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @IS_DCBX_PFC_PRI_ONLY_PAUSE(%struct.bnx2x* %222, i32 %223)
  %225 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %226 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %225, i32 0, i32 0
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  store i32 %224, i32* %229, align 8
  %230 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %231 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %230, i32 0, i32 0
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  store i32 %224, i32* %234, align 8
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %259, %221
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %262

239:                                              ; preds = %235
  %240 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %241 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 1, %248
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %12, align 4
  %252 = xor i32 %251, -1
  %253 = and i32 %250, %252
  store i32 %253, i32* %13, align 4
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %12, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %239
  br label %262

258:                                              ; preds = %239
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %11, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %11, align 4
  br label %235

262:                                              ; preds = %257, %235
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %262
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %271 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %270, i32 0, i32 0
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i64 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 2
  store i32 %269, i32* %274, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %277 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %276, i32 0, i32 0
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 1
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 2
  store i32 %275, i32* %280, align 8
  %281 = load i8*, i8** @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %282 = call i8* @BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(i8* %281)
  %283 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %284 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %283, i32 0, i32 0
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 3
  store i8* %282, i8** %287, align 8
  %288 = load i8*, i8** @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %289 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %290 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %289, i32 0, i32 0
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i64 1
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 3
  store i8* %288, i8** %293, align 8
  br label %294

294:                                              ; preds = %268, %210
  br label %295

295:                                              ; preds = %22, %294, %168
  ret void
}

declare dso_local i32 @bnx2x_dcbx_ets_disabled_entry_data(%struct.bnx2x*, %struct.cos_help_data*, i32) #1

declare dso_local i64 @IS_DCBX_PFC_PRI_MIX_PAUSE(%struct.bnx2x*, i32) #1

declare dso_local i64 @POWER_OF_2(i64) #1

declare dso_local i64 @DCBX_PFC_PRI_GET_PAUSE(%struct.bnx2x*, i32) #1

declare dso_local i32 @IS_DCBX_PFC_PRI_ONLY_PAUSE(%struct.bnx2x*, i32) #1

declare dso_local i64 @DCBX_PFC_PRI_GET_NON_PAUSE(%struct.bnx2x*, i32) #1

declare dso_local i8* @BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(i8*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
