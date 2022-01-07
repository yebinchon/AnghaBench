; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_chk_ms_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_chk_ms_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.qla_hw_data* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.ct_sns_rsp = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ct_entry_24xx = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"%s failed, error status (%x) on port_id: %02x%02x%02x.\0A\00", align 1
@CT_ACCEPT_RESPONSE = common dso_local global i32 0, align 4
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"%s failed rejected request on port_id: %02x%02x%02x.\0A\00", align 1
@QLA_INVALID_COMMAND = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"%s failed, completion status (%x) on port_id: %02x%02x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.ct_sns_rsp*, i8*)* @qla2x00_chk_ms_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_chk_ms_status(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.ct_sns_rsp* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.ct_sns_rsp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.ct_sns_rsp* %2, %struct.ct_sns_rsp** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %11, align 8
  %15 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = load i64, i64* @ql_dbg_disc, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i64, %struct.TYPE_13__*, i32, i8*, i8*, i32, i32, i32, ...) @ql_dbg(i64 %21, %struct.TYPE_13__* %22, i32 8241, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %27, i32 %32, i32 %37, i32 %42)
  br label %125

44:                                               ; preds = %4
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %46 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = bitcast %struct.TYPE_14__* %49 to %struct.ct_entry_24xx*
  %51 = getelementptr inbounds %struct.ct_entry_24xx, %struct.ct_entry_24xx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %10, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i32, i32* %10, align 4
  switch i32 %60, label %103 [
    i32 130, label %61
    i32 128, label %61
    i32 129, label %61
  ]

61:                                               ; preds = %59, %59, %59
  %62 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %7, align 8
  %63 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CT_ACCEPT_RESPONSE, align 4
  %67 = call i32 @__constant_cpu_to_be16(i32 %66)
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %61
  %70 = load i64, i64* @ql_dbg_disc, align 8
  %71 = load i64, i64* @ql_dbg_buffer, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i64, %struct.TYPE_13__*, i32, i8*, i8*, i32, i32, i32, ...) @ql_dbg(i64 %72, %struct.TYPE_13__* %73, i32 8311, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %79, i32 %84, i32 %89)
  %91 = load i64, i64* @ql_dbg_disc, align 8
  %92 = load i64, i64* @ql_dbg_buffer, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %7, align 8
  %96 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %95, i32 0, i32 0
  %97 = bitcast %struct.TYPE_10__* %96 to i32*
  %98 = call i32 @ql_dump_buffer(i64 %93, %struct.TYPE_13__* %94, i32 8312, i32* %97, i32 4)
  %99 = load i32, i32* @QLA_INVALID_COMMAND, align 4
  store i32 %99, i32* %9, align 4
  br label %102

100:                                              ; preds = %61
  %101 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %69
  br label %124

103:                                              ; preds = %59
  %104 = load i64, i64* @ql_dbg_disc, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i64, %struct.TYPE_13__*, i32, i8*, i8*, i32, i32, i32, ...) @ql_dbg(i64 %104, %struct.TYPE_13__* %105, i32 8243, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %106, i32 %107, i32 %112, i32 %117, i32 %122)
  br label %124

124:                                              ; preds = %103, %102
  br label %125

125:                                              ; preds = %124, %20
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_13__*, i32, i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__constant_cpu_to_be16(i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_13__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
