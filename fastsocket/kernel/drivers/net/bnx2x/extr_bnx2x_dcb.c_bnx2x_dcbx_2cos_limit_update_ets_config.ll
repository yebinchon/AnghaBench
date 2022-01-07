; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_2cos_limit_update_ets_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_2cos_limit_update_ets_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bnx2x_dcbx_pg_params }
%struct.bnx2x_dcbx_pg_params = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@DCBX_COS_MAX_NUM_E2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Illegal number of COSes %d\0A\00", align 1
@BNX2X_DCBX_STRICT_INVALID = common dso_local global i64 0, align 8
@DCBX_INVALID_COS_BW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [164 x i8] c"all COS should have at least bw_limit or strictets->cos_params[0].strict= %xets->cos_params[0].bw_tbl= %xets->cos_params[1].strict= %xets->cos_params[1].bw_tbl= %x\00", align 1
@BNX2X_DCBX_STRICT_COS_HIGHEST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"update_ets_params failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_dcbx_2cos_limit_update_ets_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_2cos_limit_update_ets_config(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_dcbx_pg_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.bnx2x_dcbx_pg_params* %9, %struct.bnx2x_dcbx_pg_params** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DCBX_COS_MAX_NUM_E2, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %1
  %21 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %173

25:                                               ; preds = %14
  %26 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %173

31:                                               ; preds = %25
  %32 = load i64, i64* @BNX2X_DCBX_STRICT_INVALID, align 8
  %33 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %42 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %41, %47
  br i1 %48, label %67, label %49

49:                                               ; preds = %40, %31
  %50 = load i64, i64* @BNX2X_DCBX_STRICT_INVALID, align 8
  %51 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %50, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %49
  %59 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %60 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %61 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %59, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %58, %40
  %68 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %69 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %75 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %81 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %87 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %79, i64 %85, i64 %91)
  br label %173

93:                                               ; preds = %58, %49
  %94 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %95 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %96 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %94, %100
  br i1 %101, label %102, label %140

102:                                              ; preds = %93
  %103 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %104 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %105 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %103, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %102
  %112 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %113 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %5, align 4
  %119 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %120 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %111
  store i32 1, i32* %5, align 4
  store i32 99, i32* %6, align 4
  br label %134

129:                                              ; preds = %111
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  store i32 99, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %129
  br label %134

134:                                              ; preds = %133, %128
  %135 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %136 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %135, i32 0, i32 0
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @bnx2x_ets_bw_limit(i32* %136, i32 %137, i32 %138)
  br label %173

140:                                              ; preds = %102, %93
  %141 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %142 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %151 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %150, i32 0, i32 0
  %152 = call i32 @bnx2x_ets_strict(i32* %151, i32 0)
  store i32 %152, i32* %4, align 4
  br label %167

153:                                              ; preds = %140
  %154 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %155 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @BNX2X_DCBX_STRICT_COS_HIGHEST, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %164 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %163, i32 0, i32 0
  %165 = call i32 @bnx2x_ets_strict(i32* %164, i32 1)
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %153
  br label %167

167:                                              ; preds = %166, %149
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %167
  br label %173

173:                                              ; preds = %20, %30, %67, %172, %134
  ret void
}

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @bnx2x_ets_bw_limit(i32*, i32, i32) #1

declare dso_local i32 @bnx2x_ets_strict(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
