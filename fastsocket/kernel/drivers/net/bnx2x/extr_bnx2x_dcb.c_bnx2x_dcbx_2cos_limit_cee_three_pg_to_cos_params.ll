; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_2cos_limit_cee_three_pg_to_cos_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_2cos_limit_cee_three_pg_to_cos_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.pg_help_data = type { i32 }
%struct.dcbx_ets_feature = type { i32 }
%struct.cos_help_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i64 0, align 8
@DCBX_MAX_NUM_PG_BW_ENTRIES = common dso_local global i64 0, align 8
@BNX2X_DCBX_STRICT_COS_HIGHEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.pg_help_data*, %struct.dcbx_ets_feature*, %struct.cos_help_data*, i32*, i32, i64)* @bnx2x_dcbx_2cos_limit_cee_three_pg_to_cos_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_2cos_limit_cee_three_pg_to_cos_params(%struct.bnx2x* %0, %struct.pg_help_data* %1, %struct.dcbx_ets_feature* %2, %struct.cos_help_data* %3, i32* %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.pg_help_data*, align 8
  %10 = alloca %struct.dcbx_ets_feature*, align 8
  %11 = alloca %struct.cos_help_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %8, align 8
  store %struct.pg_help_data* %1, %struct.pg_help_data** %9, align 8
  store %struct.dcbx_ets_feature* %2, %struct.dcbx_ets_feature** %10, align 8
  store %struct.cos_help_data* %3, %struct.cos_help_data** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %21 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  store i64 %21, i64* %20, align 8
  %22 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %23 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %28 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @IS_DCBX_PFC_PRI_MIX_PAUSE(%struct.bnx2x* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %7
  %37 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %38 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %10, align 8
  %41 = call i32 @bnx2x_dcbx_separate_pauseable_from_non(%struct.bnx2x* %37, %struct.cos_help_data* %38, i32* %39, %struct.dcbx_ets_feature* %40)
  br label %137

42:                                               ; preds = %7
  %43 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @IS_DCBX_PFC_PRI_ONLY_PAUSE(%struct.bnx2x* %43, i32 %44)
  %46 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %47 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %45, i32* %50, align 4
  %51 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %52 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %45, i32* %55, align 4
  store i64 0, i64* %15, align 8
  br label %56

56:                                               ; preds = %133, %42
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %20, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %136

60:                                               ; preds = %56
  %61 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %62 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 1, %68
  store i32 %69, i32* %16, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %72 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %70, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* @DCBX_MAX_NUM_PG_BW_ENTRIES, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %60
  store i64 0, i64* %17, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %20, align 8
  %89 = sub i64 %88, 1
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 0, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i64 1, i64* %17, align 8
  br label %95

95:                                               ; preds = %94, %91, %86
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %98 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %96
  store i32 %104, i32* %102, align 4
  %105 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %106 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %107 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %109
  %111 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %10, align 8
  %112 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %18, align 8
  %115 = call i32 @DCBX_PG_BW_GET(i32 %113, i64 %114)
  %116 = call i32 @bnx2x_dcbx_add_to_cos_bw(%struct.bnx2x* %105, %struct.TYPE_6__* %110, i32 %115)
  br label %132

117:                                              ; preds = %60
  store i32 1, i32* %19, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %120 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %118
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @BNX2X_DCBX_STRICT_COS_HIGHEST, align 4
  %127 = load %struct.cos_help_data*, %struct.cos_help_data** %11, align 8
  %128 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i32 %126, i32* %131, align 4
  br label %132

132:                                              ; preds = %117, %95
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %15, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %15, align 8
  br label %56

136:                                              ; preds = %56
  br label %137

137:                                              ; preds = %136, %36
  ret void
}

declare dso_local i64 @IS_DCBX_PFC_PRI_MIX_PAUSE(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_dcbx_separate_pauseable_from_non(%struct.bnx2x*, %struct.cos_help_data*, i32*, %struct.dcbx_ets_feature*) #1

declare dso_local i32 @IS_DCBX_PFC_PRI_ONLY_PAUSE(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_dcbx_add_to_cos_bw(%struct.bnx2x*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @DCBX_PG_BW_GET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
