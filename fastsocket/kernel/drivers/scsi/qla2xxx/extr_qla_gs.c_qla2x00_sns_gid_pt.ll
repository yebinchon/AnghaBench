; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_gid_pt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_gid_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.sns_cmd_pkt = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@GID_PT_CMD = common dso_local global i32 0, align 4
@GID_PT_SNS_SCMD_LEN = common dso_local global i32 0, align 4
@NS_NX_PORT_TYPE = common dso_local global i32 0, align 4
@GID_PT_SNS_CMD_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"GID_PT Send SNS failed (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"GID_PT failed, rejected request, gid_rsp:\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @qla2x00_sns_gid_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_sns_gid_pt(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sns_cmd_pkt*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %6, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = call i32 @qla2x00_gid_pt_rsp_size(%struct.TYPE_19__* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = load i32, i32* @GID_PT_CMD, align 4
  %18 = load i32, i32* @GID_PT_SNS_SCMD_LEN, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_19__* %16, i32 %17, i32 %18, i32 %19)
  store %struct.sns_cmd_pkt* %20, %struct.sns_cmd_pkt** %9, align 8
  %21 = load i32, i32* @NS_NX_PORT_TYPE, align 4
  %22 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %9, align 8
  %23 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %21, i32* %27, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GID_PT_SNS_CMD_SIZE, align 4
  %33 = sdiv i32 %32, 2
  %34 = call i32 @qla2x00_send_sns(%struct.TYPE_19__* %28, i32 %31, i32 %33, i32 16)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @QLA_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load i64, i64* @ql_dbg_disc, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ql_dbg(i64 %39, %struct.TYPE_19__* %40, i32 8301, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %151

43:                                               ; preds = %2
  %44 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %9, align 8
  %45 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %9, align 8
  %53 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 9
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %73

59:                                               ; preds = %51, %43
  %60 = load i64, i64* @ql_dbg_disc, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ql_dbg(i64 %60, %struct.TYPE_19__* %61, i32 8239, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i64, i64* @ql_dbg_disc, align 8
  %64 = load i64, i64* @ql_dbg_buffer, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %9, align 8
  %68 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ql_dump_buffer(i64 %65, %struct.TYPE_19__* %66, i32 8321, i32* %70, i32 16)
  %72 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %72, i32* %5, align 4
  br label %150

73:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %138, %73
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %141

80:                                               ; preds = %74
  %81 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %9, align 8
  %82 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 4
  %87 = add nsw i32 %86, 16
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32* %89, i32** %8, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store i32 %102, i32* %109, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  store i32 %112, i32* %119, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @BIT_7, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %80
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  store i32 %129, i32* %136, align 4
  br label %141

137:                                              ; preds = %80
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %74

141:                                              ; preds = %126, %74
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %141
  br label %150

150:                                              ; preds = %149, %59
  br label %151

151:                                              ; preds = %150, %38
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @qla2x00_gid_pt_rsp_size(%struct.TYPE_19__*) #1

declare dso_local %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_send_sns(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_19__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
