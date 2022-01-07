; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gid_pt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gid_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_25__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.ct_sns_gid_pt_data* }
%struct.ct_sns_gid_pt_data = type { i32, i32* }
%struct.TYPE_23__ = type { i32* (%struct.TYPE_22__*, i32, i64)* }
%struct.TYPE_21__ = type { %struct.TYPE_31__, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }

@GID_PT_REQ_SIZE = common dso_local global i32 0, align 4
@GID_PT_CMD = common dso_local global i32 0, align 4
@NS_NX_PORT_TYPE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GID_PT issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GID_PT\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_gid_pt(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ct_sns_req*, align 8
  %10 = alloca %struct.ct_sns_rsp*, align 8
  %11 = alloca %struct.ct_sns_gid_pt_data*, align 8
  %12 = alloca %struct.qla_hw_data*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %12, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %18 = call i64 @IS_QLA2100(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %22 = call i64 @IS_QLA2200(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = call i32 @qla2x00_sns_gid_pt(%struct.TYPE_22__* %25, %struct.TYPE_21__* %26)
  store i32 %27, i32* %3, align 4
  br label %175

28:                                               ; preds = %20
  store %struct.ct_sns_gid_pt_data* null, %struct.ct_sns_gid_pt_data** %11, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %30 = call i64 @qla2x00_gid_pt_rsp_size(%struct.TYPE_22__* %29)
  store i64 %30, i64* %13, align 8
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32* (%struct.TYPE_22__*, i32, i64)*, i32* (%struct.TYPE_22__*, i32, i64)** %34, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %37 = load i32, i32* @GID_PT_REQ_SIZE, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call i32* %35(%struct.TYPE_22__* %36, i32 %37, i64 %38)
  store i32* %39, i32** %8, align 8
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = load i32, i32* @GID_PT_CMD, align 4
  %46 = load i64, i64* %13, align 8
  %47 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32* %44, i32 %45, i64 %46)
  store %struct.ct_sns_req* %47, %struct.ct_sns_req** %9, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  store %struct.ct_sns_rsp* %52, %struct.ct_sns_rsp** %10, align 8
  %53 = load i32, i32* @NS_NX_PORT_TYPE, align 4
  %54 = load %struct.ct_sns_req*, %struct.ct_sns_req** %9, align 8
  %55 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @qla2x00_issue_iocb(%struct.TYPE_22__* %58, i32 %61, i32 %64, i32 4)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @QLA_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %28
  %70 = load i32, i32* @ql_dbg_disc, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ql_dbg(i32 %70, %struct.TYPE_22__* %71, i32 8277, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %173

74:                                               ; preds = %28
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %78 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_22__* %75, i32* %76, %struct.ct_sns_rsp* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @QLA_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %82, i32* %6, align 4
  br label %172

83:                                               ; preds = %74
  store i64 0, i64* %7, align 8
  br label %84

84:                                               ; preds = %160, %83
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %163

90:                                               ; preds = %84
  %91 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %10, align 8
  %92 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %95, i64 %96
  store %struct.ct_sns_gid_pt_data* %97, %struct.ct_sns_gid_pt_data** %11, align 8
  %98 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %99 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 3
  store i32 %102, i32* %108, align 4
  %109 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %110 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 2
  store i32 %113, i32* %119, align 4
  %120 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %121 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 1
  store i32 %124, i32* %130, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @WWN_SIZE, align 4
  %137 = call i32 @memset(i32 %135, i32 0, i32 %136)
  %138 = load i32, i32* @PORT_SPEED_UNKNOWN, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 4
  %143 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %144 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BIT_7, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %90
  %150 = load %struct.ct_sns_gid_pt_data*, %struct.ct_sns_gid_pt_data** %11, align 8
  %151 = getelementptr inbounds %struct.ct_sns_gid_pt_data, %struct.ct_sns_gid_pt_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 0
  store i32 %152, i32* %158, align 4
  br label %163

159:                                              ; preds = %90
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %7, align 8
  br label %84

163:                                              ; preds = %149, %84
  %164 = load i64, i64* %7, align 8
  %165 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %166 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %164, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %163
  br label %172

172:                                              ; preds = %171, %81
  br label %173

173:                                              ; preds = %172, %69
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %24
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_sns_gid_pt(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @qla2x00_gid_pt_rsp_size(%struct.TYPE_22__*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32*, i32, i64) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_22__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_22__*, i32*, %struct.ct_sns_rsp*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
