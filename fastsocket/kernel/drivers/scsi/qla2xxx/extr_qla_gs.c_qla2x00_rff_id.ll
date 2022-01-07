; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rff_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rff_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.qla_hw_data* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { i32 }
%struct.TYPE_14__ = type { i32* (%struct.TYPE_21__*, i32, i32)* }
%struct.ct_sns_req = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32* }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RFF_ID call not supported on ISP2100/ISP2200.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@RFF_ID_REQ_SIZE = common dso_local global i32 0, align 4
@RFF_ID_RSP_SIZE = common dso_local global i32 0, align 4
@RFF_ID_CMD = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RFF_ID issue IOCB failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"RFF_ID\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"RFF_ID exiting normally.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_rff_id(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ct_sns_req*, align 8
  %8 = alloca %struct.ct_sns_rsp*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
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
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @ql_dbg_disc, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %20, %struct.TYPE_21__* %21, i32 8262, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %23, i32* %2, align 4
  br label %121

24:                                               ; preds = %15
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32* (%struct.TYPE_21__*, i32, i32)*, i32* (%struct.TYPE_21__*, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %31 = load i32, i32* @RFF_ID_REQ_SIZE, align 4
  %32 = load i32, i32* @RFF_ID_RSP_SIZE, align 4
  %33 = call i32* %29(%struct.TYPE_21__* %30, i32 %31, i32 %32)
  store i32* %33, i32** %6, align 8
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* @RFF_ID_CMD, align 4
  %40 = load i32, i32* @RFF_ID_RSP_SIZE, align 4
  %41 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32* %38, i32 %39, i32 %40)
  store %struct.ct_sns_req* %41, %struct.ct_sns_req** %7, align 8
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store %struct.ct_sns_rsp* %46, %struct.ct_sns_rsp** %8, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %53 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %51, i32* %57, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %64 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %62, i32* %68, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %75 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %73, i32* %79, align 4
  %80 = load i32, i32* @BIT_1, align 4
  %81 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %82 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %86 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store i32 8, i32* %88, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @qla2x00_issue_iocb(%struct.TYPE_21__* %89, i32 %92, i32 %95, i32 4)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @QLA_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %24
  %101 = load i32, i32* @ql_dbg_disc, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %101, %struct.TYPE_21__* %102, i32 8263, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %119

105:                                              ; preds = %24
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %8, align 8
  %109 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_21__* %106, i32* %107, %struct.ct_sns_rsp* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @QLA_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %113, i32* %4, align 4
  br label %118

114:                                              ; preds = %105
  %115 = load i32, i32* @ql_dbg_disc, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %115, %struct.TYPE_21__* %116, i32 8264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %112
  br label %119

119:                                              ; preds = %118, %100
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %19
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_21__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
