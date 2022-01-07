; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gpn_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gpn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_22__ = type { i32* (%struct.TYPE_21__*, i32, i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, i32, i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@GPN_ID_REQ_SIZE = common dso_local global i32 0, align 4
@GPN_ID_RSP_SIZE = common dso_local global i32 0, align 4
@GPN_ID_CMD = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GPN_ID issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GPN_ID\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_gpn_id(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ct_sns_req*, align 8
  %10 = alloca %struct.ct_sns_rsp*, align 8
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %12 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %11, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %17 = call i64 @IS_QLA2100(%struct.qla_hw_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %21 = call i64 @IS_QLA2200(%struct.qla_hw_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = call i32 @qla2x00_sns_gpn_id(%struct.TYPE_21__* %24, %struct.TYPE_20__* %25)
  store i32 %26, i32* %3, align 4
  br label %151

27:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %146, %27
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %149

34:                                               ; preds = %28
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32* (%struct.TYPE_21__*, i32, i32)*, i32* (%struct.TYPE_21__*, i32, i32)** %38, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = load i32, i32* @GPN_ID_REQ_SIZE, align 4
  %42 = load i32, i32* @GPN_ID_RSP_SIZE, align 4
  %43 = call i32* %39(%struct.TYPE_21__* %40, i32 %41, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load i32, i32* @GPN_ID_CMD, align 4
  %50 = load i32, i32* @GPN_ID_RSP_SIZE, align 4
  %51 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32* %48, i32 %49, i32 %50)
  store %struct.ct_sns_req* %51, %struct.ct_sns_req** %9, align 8
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 3
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  store %struct.ct_sns_rsp* %56, %struct.ct_sns_rsp** %10, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %65 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %63, i32* %69, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %78 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %76, i32* %82, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %91 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %89, i32* %95, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @qla2x00_issue_iocb(%struct.TYPE_21__* %96, i32 %99, i32 %102, i32 4)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @QLA_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %34
  %108 = load i32, i32* @ql_dbg_disc, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @ql_dbg(i32 %108, %struct.TYPE_21__* %109, i32 8278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %149

112:                                              ; preds = %34
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %116 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_21__* %113, i32* %114, %struct.ct_sns_rsp* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @QLA_SUCCESS, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %120, i32* %6, align 4
  br label %149

121:                                              ; preds = %112
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %128 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @WWN_SIZE, align 4
  %133 = call i32 @memcpy(i32 %126, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %149

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %7, align 8
  br label %28

149:                                              ; preds = %144, %119, %107, %28
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %23
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_sns_gpn_id(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_21__*, i32*, %struct.ct_sns_rsp*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
