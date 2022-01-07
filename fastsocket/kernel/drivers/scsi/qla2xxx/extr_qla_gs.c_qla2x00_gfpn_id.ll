; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gfpn_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gfpn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { i32* (%struct.TYPE_19__*, i32, i32)* }
%struct.TYPE_18__ = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i32, i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFPN_ID_REQ_SIZE = common dso_local global i32 0, align 4
@GFPN_ID_RSP_SIZE = common dso_local global i32 0, align 4
@GFPN_ID_CMD = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"GFPN_ID issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"GFPN_ID\00", align 1
@WWN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_gfpn_id(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ct_sns_req*, align 8
  %11 = alloca %struct.ct_sns_rsp*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %12 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %8, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %17 = call i32 @IS_IIDMA_CAPABLE(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %20, i32* %3, align 4
  br label %145

21:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %140, %21
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %143

28:                                               ; preds = %22
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32* (%struct.TYPE_19__*, i32, i32)*, i32* (%struct.TYPE_19__*, i32, i32)** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = load i32, i32* @GFPN_ID_REQ_SIZE, align 4
  %36 = load i32, i32* @GFPN_ID_RSP_SIZE, align 4
  %37 = call i32* %33(%struct.TYPE_19__* %34, i32 %35, i32 %36)
  store i32* %37, i32** %9, align 8
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 3
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load i32, i32* @GFPN_ID_CMD, align 4
  %44 = load i32, i32* @GFPN_ID_RSP_SIZE, align 4
  %45 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32* %42, i32 %43, i32 %44)
  store %struct.ct_sns_req* %45, %struct.ct_sns_req** %10, align 8
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 3
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  store %struct.ct_sns_rsp* %50, %struct.ct_sns_rsp** %11, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ct_sns_req*, %struct.ct_sns_req** %10, align 8
  %59 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %57, i32* %63, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ct_sns_req*, %struct.ct_sns_req** %10, align 8
  %72 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %70, i32* %76, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ct_sns_req*, %struct.ct_sns_req** %10, align 8
  %85 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 %83, i32* %89, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @qla2x00_issue_iocb(%struct.TYPE_19__* %90, i32 %93, i32 %96, i32 4)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @QLA_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %28
  %102 = load i32, i32* @ql_dbg_disc, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @ql_dbg(i32 %102, %struct.TYPE_19__* %103, i32 8227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %143

106:                                              ; preds = %28
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %11, align 8
  %110 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_19__* %107, i32* %108, %struct.ct_sns_rsp* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @QLA_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %114, i32* %6, align 4
  br label %143

115:                                              ; preds = %106
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %11, align 8
  %122 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @WWN_SIZE, align 4
  %127 = call i32 @memcpy(i32 %120, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %143

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %7, align 8
  br label %22

143:                                              ; preds = %138, %113, %101, %22
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %19
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @IS_IIDMA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_19__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_19__*, i32*, %struct.ct_sns_rsp*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
