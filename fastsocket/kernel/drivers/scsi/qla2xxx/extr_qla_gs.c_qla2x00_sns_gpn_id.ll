; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_gpn_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_gpn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.sns_cmd_pkt = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@GPN_ID_CMD = common dso_local global i32 0, align 4
@GPN_ID_SNS_SCMD_LEN = common dso_local global i32 0, align 4
@GPN_ID_SNS_DATA_SIZE = common dso_local global i32 0, align 4
@GPN_ID_SNS_CMD_SIZE = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"GPN_ID Send SNS failed (%d).\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"GPN_ID failed, rejected request, gpn_rsp:\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @qla2x00_sns_gpn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_sns_gpn_id(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sns_cmd_pkt*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %136, %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %139

19:                                               ; preds = %13
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = load i32, i32* @GPN_ID_CMD, align 4
  %22 = load i32, i32* @GPN_ID_SNS_SCMD_LEN, align 4
  %23 = load i32, i32* @GPN_ID_SNS_DATA_SIZE, align 4
  %24 = call %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_18__* %20, i32 %21, i32 %22, i32 %23)
  store %struct.sns_cmd_pkt* %24, %struct.sns_cmd_pkt** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %8, align 8
  %33 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %8, align 8
  %46 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %44, i32* %50, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %8, align 8
  %59 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %57, i32* %63, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GPN_ID_SNS_CMD_SIZE, align 4
  %69 = sdiv i32 %68, 2
  %70 = call i32 @qla2x00_send_sns(%struct.TYPE_18__* %64, i32 %67, i32 %69, i32 16)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @QLA_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %19
  %75 = load i64, i64* @ql_dbg_disc, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i64, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i64 %75, %struct.TYPE_18__* %76, i32 8242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %125

79:                                               ; preds = %19
  %80 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %8, align 8
  %81 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 128
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %8, align 8
  %89 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 9
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %111

95:                                               ; preds = %87, %79
  %96 = load i64, i64* @ql_dbg_disc, align 8
  %97 = load i64, i64* @ql_dbg_buffer, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %100 = call i32 (i64, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i64 %98, %struct.TYPE_18__* %99, i32 8318, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i64, i64* @ql_dbg_disc, align 8
  %102 = load i64, i64* @ql_dbg_buffer, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %8, align 8
  %106 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ql_dump_buffer(i64 %103, %struct.TYPE_18__* %104, i32 8319, i32* %108, i32 16)
  %110 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %110, i32* %5, align 4
  br label %124

111:                                              ; preds = %87
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %8, align 8
  %118 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 16
  %122 = load i32, i32* @WWN_SIZE, align 4
  %123 = call i32 @memcpy(i32 %116, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %111, %95
  br label %125

125:                                              ; preds = %124, %74
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %139

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %7, align 8
  br label %13

139:                                              ; preds = %134, %13
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_send_sns(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_18__*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
