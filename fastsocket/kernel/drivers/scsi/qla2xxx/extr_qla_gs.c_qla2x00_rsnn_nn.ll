; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rsnn_nn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rsnn_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_22__* (%struct.TYPE_21__*, i32, i32)* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32, i32 }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RSNN_ID call unsupported on ISP2100/ISP2200.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@RSNN_NN_RSP_SIZE = common dso_local global i32 0, align 4
@RSNN_NN_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"RSNN_NN issue IOCB failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RSNN_NN\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"RSNN_NN exiting normally.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_rsnn_nn(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
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
  %22 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %20, %struct.TYPE_21__* %21, i32 8272, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %23, i32* %2, align 4
  br label %119

24:                                               ; preds = %15
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_22__* (%struct.TYPE_21__*, i32, i32)*, %struct.TYPE_22__* (%struct.TYPE_21__*, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %31 = load i32, i32* @RSNN_NN_RSP_SIZE, align 4
  %32 = call %struct.TYPE_22__* %29(%struct.TYPE_21__* %30, i32 0, i32 %31)
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %6, align 8
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* @RSNN_NN_CMD, align 4
  %39 = load i32, i32* @RSNN_NN_RSP_SIZE, align 4
  %40 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32* %37, i32 %38, i32 %39)
  store %struct.ct_sns_req* %40, %struct.ct_sns_req** %7, align 8
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store %struct.ct_sns_rsp* %45, %struct.ct_sns_rsp** %8, align 8
  %46 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %47 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @WWN_SIZE, align 4
  %55 = call i32 @memcpy(i32 %50, i32 %53, i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %58 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @qla2x00_get_sym_node_name(%struct.TYPE_21__* %56, i32 %61)
  %63 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %64 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strlen(i32 %67)
  %69 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %70 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  store i64 %68, i64* %72, align 8
  %73 = load %struct.ct_sns_req*, %struct.ct_sns_req** %7, align 8
  %74 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 25, %77
  %79 = call i32 @cpu_to_le32(i64 %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @qla2x00_issue_iocb(%struct.TYPE_21__* %87, i32 %90, i32 %93, i32 8)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @QLA_SUCCESS, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %24
  %99 = load i32, i32* @ql_dbg_disc, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %99, %struct.TYPE_21__* %100, i32 8273, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %117

103:                                              ; preds = %24
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %8, align 8
  %107 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_21__* %104, %struct.TYPE_22__* %105, %struct.ct_sns_rsp* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @QLA_SUCCESS, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %111, i32* %4, align 4
  br label %116

112:                                              ; preds = %103
  %113 = load i32, i32* @ql_dbg_disc, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %115 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %113, %struct.TYPE_21__* %114, i32 8274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %110
  br label %117

117:                                              ; preds = %116, %98
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %19
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qla2x00_get_sym_node_name(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
