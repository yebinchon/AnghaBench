; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_dhba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_dhba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.ct_sns_rsp, i32 }
%struct.ct_sns_rsp = type { i32 }
%struct.TYPE_12__ = type { i32* (%struct.TYPE_17__*, i32, i32)* }
%struct.ct_sns_req = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }

@DHBA_REQ_SIZE = common dso_local global i32 0, align 4
@DHBA_RSP_SIZE = common dso_local global i32 0, align 4
@DHBA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DHBA portname = %02x%02x%02x%02x%02x%02x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DHBA issue IOCB failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DHBA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"DHBA exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @qla2x00_fdmi_dhba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmi_dhba(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ct_sns_req*, align 8
  %7 = alloca %struct.ct_sns_rsp*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %4, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32* (%struct.TYPE_17__*, i32, i32)*, i32* (%struct.TYPE_17__*, i32, i32)** %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = load i32, i32* @DHBA_REQ_SIZE, align 4
  %18 = load i32, i32* @DHBA_RSP_SIZE, align 4
  %19 = call i32* %15(%struct.TYPE_17__* %16, i32 %17, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* @DHBA_CMD, align 4
  %26 = load i32, i32* @DHBA_RSP_SIZE, align 4
  %27 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(i32* %24, i32 %25, i32 %26)
  store %struct.ct_sns_req* %27, %struct.ct_sns_req** %6, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store %struct.ct_sns_rsp* %32, %struct.ct_sns_rsp** %7, align 8
  %33 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %34 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WWN_SIZE, align 4
  %42 = call i32 @memcpy(i32* %37, i32 %40, i32 %41)
  %43 = load i32, i32* @ql_dbg_disc, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %46 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %53 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %60 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %67 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %74 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %81 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %88 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %95 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %43, %struct.TYPE_17__* %44, i32 8246, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %58, i32 %65, i32 %72, i32 %79, i32 %86, i32 %93, i32 %100)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %104 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @qla2x00_issue_iocb(%struct.TYPE_17__* %102, i32 %105, i32 %108, i32 4)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @QLA_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %1
  %114 = load i32, i32* @ql_dbg_disc, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = load i32, i32* %3, align 4
  %117 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %114, %struct.TYPE_17__* %115, i32 8247, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %132

118:                                              ; preds = %1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %7, align 8
  %122 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_17__* %119, i32* %120, %struct.ct_sns_rsp* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @QLA_SUCCESS, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %126, i32* %3, align 4
  br label %131

127:                                              ; preds = %118
  %128 = load i32, i32* @ql_dbg_disc, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %128, %struct.TYPE_17__* %129, i32 8248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %125
  br label %132

132:                                              ; preds = %131, %113
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_17__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
