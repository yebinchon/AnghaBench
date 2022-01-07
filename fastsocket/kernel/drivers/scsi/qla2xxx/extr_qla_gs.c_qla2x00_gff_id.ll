; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gff_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_gff_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i32, %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_20__ = type { i32* (%struct.TYPE_19__*, i32, i32)* }
%struct.TYPE_18__ = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i32, i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }

@FC4_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@GFF_ID_REQ_SIZE = common dso_local global i32 0, align 4
@GFF_ID_RSP_SIZE = common dso_local global i32 0, align 4
@GFF_ID_CMD = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GFF_ID issue IOCB failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GFF_ID\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"GFF_ID IOCB status had a failure status code.\0A\00", align 1
@GFF_FCP_SCSI_OFFSET = common dso_local global i64 0, align 8
@FC4_TYPE_FCP_SCSI = common dso_local global i32 0, align 4
@FC4_TYPE_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_gff_id(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ct_sns_req*, align 8
  %9 = alloca %struct.ct_sns_rsp*, align 8
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %158, %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %161

21:                                               ; preds = %15
  %22 = load i32, i32* @FC4_TYPE_UNKNOWN, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %28 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %158

31:                                               ; preds = %21
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32* (%struct.TYPE_19__*, i32, i32)*, i32* (%struct.TYPE_19__*, i32, i32)** %35, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = load i32, i32* @GFF_ID_REQ_SIZE, align 4
  %39 = load i32, i32* @GFF_ID_RSP_SIZE, align 4
  %40 = call i32* %36(%struct.TYPE_19__* %37, i32 %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 3
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i32, i32* @GFF_ID_CMD, align 4
  %47 = load i32, i32* @GFF_ID_RSP_SIZE, align 4
  %48 = call %struct.ct_sns_req* @qla2x00_prep_ct_req(i32* %45, i32 %46, i32 %47)
  store %struct.ct_sns_req* %48, %struct.ct_sns_req** %8, align 8
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 3
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  store %struct.ct_sns_rsp* %53, %struct.ct_sns_rsp** %9, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %62 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %60, i32* %66, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %75 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %73, i32* %79, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %88 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %86, i32* %92, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @qla2x00_issue_iocb(%struct.TYPE_19__* %93, i32 %96, i32 %99, i32 4)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @QLA_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %31
  %105 = load i32, i32* @ql_dbg_disc, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ql_dbg(i32 %105, %struct.TYPE_19__* %106, i32 8284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %147

109:                                              ; preds = %31
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %113 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_19__* %110, i32* %111, %struct.ct_sns_rsp* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @QLA_SUCCESS, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @ql_dbg_disc, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ql_dbg(i32 %117, %struct.TYPE_19__* %118, i32 8285, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %146

120:                                              ; preds = %109
  %121 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %122 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @GFF_FCP_SCSI_OFFSET, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, 15
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %120
  %134 = load i32, i32* @FC4_TYPE_FCP_SCSI, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = load i64, i64* %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 8
  br label %145

139:                                              ; preds = %120
  %140 = load i32, i32* @FC4_TYPE_OTHER, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  store i32 %140, i32* %144, align 8
  br label %145

145:                                              ; preds = %139, %133
  br label %146

146:                                              ; preds = %145, %116
  br label %147

147:                                              ; preds = %146, %104
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %161

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %30
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %6, align 8
  br label %15

161:                                              ; preds = %156, %15
  ret void
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_req(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_19__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
