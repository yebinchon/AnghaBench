; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rnn_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rnn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_19__, %struct.qla_hw_data* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { i32 }
%struct.TYPE_15__ = type { i32* (%struct.TYPE_22__*, i32, i32)* }
%struct.ct_sns_req = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32* }

@RNN_ID_REQ_SIZE = common dso_local global i32 0, align 4
@RNN_ID_RSP_SIZE = common dso_local global i32 0, align 4
@RNN_ID_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RNN_ID issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RNN_ID\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RNN_ID exiting normally.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_rnn_id(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ct_sns_req*, align 8
  %8 = alloca %struct.ct_sns_rsp*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %5, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %13 = call i64 @IS_QLA2100(%struct.qla_hw_data* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = call i64 @IS_QLA2200(%struct.qla_hw_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = call i32 @qla2x00_sns_rnn_id(%struct.TYPE_22__* %20)
  store i32 %21, i32* %2, align 4
  br label %120

22:                                               ; preds = %15
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32* (%struct.TYPE_22__*, i32, i32)*, i32* (%struct.TYPE_22__*, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = load i32, i32* @RNN_ID_REQ_SIZE, align 4
  %30 = load i32, i32* @RNN_ID_RSP_SIZE, align 4
  %31 = call i32* %27(%struct.TYPE_22__* %28, i32 %29, i32 %30)
  store i32* %31, i32** %6, align 8
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i32, i32* @RNN_ID_CMD, align 4
  %38 = load i32, i32* @RNN_ID_RSP_SIZE, align 4
  %39 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32* %36, i32 %37, i32 %38)
  store %struct.ct_sns_req* %39, %struct.ct_sns_req** %7, align 8
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store %struct.ct_sns_rsp* %44, %struct.ct_sns_rsp** %8, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %51 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %49, i32* %55, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %62 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %60, i32* %66, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %73 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %71, i32* %77, align 4
  %78 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %79 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @WWN_SIZE, align 4
  %87 = call i32 @memcpy(i32 %82, i32 %85, i32 %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %93 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @qla2x00_issue_iocb(%struct.TYPE_22__* %88, i32 %91, i32 %94, i32 4)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @QLA_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %22
  %100 = load i32, i32* @ql_dbg_disc, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, ...) @ql_dbg(i32 %100, %struct.TYPE_22__* %101, i32 8269, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %118

104:                                              ; preds = %22
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %8, align 8
  %108 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_22__* %105, i32* %106, %struct.ct_sns_rsp* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @QLA_SUCCESS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %112, i32* %4, align 4
  br label %117

113:                                              ; preds = %104
  %114 = load i32, i32* @ql_dbg_disc, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = call i32 (i32, %struct.TYPE_22__*, i32, i8*, ...) @ql_dbg(i32 %114, %struct.TYPE_22__* %115, i32 8270, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %111
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %19
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_sns_rnn_id(%struct.TYPE_22__*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_22__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
