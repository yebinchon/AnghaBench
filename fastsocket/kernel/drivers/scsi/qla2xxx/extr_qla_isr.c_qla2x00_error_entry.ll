; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_error_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_error_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, %struct.req_que** }
%struct.req_que = type { i32 }
%struct.rsp_que = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.qla_hw_data*, %struct.TYPE_14__*, i32)* }

@__const.qla2x00_error_entry.func = private unnamed_addr constant [11 x i8] c"ERROR-IOCB\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"type of error status in response: 0x%x\0A\00", align 1
@RF_BUSY = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error entry - invalid handle/queue.\0A\00", align 1
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.rsp_que*, %struct.TYPE_13__*)* @qla2x00_error_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_error_entry(%struct.TYPE_15__* %0, %struct.rsp_que* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca [11 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.req_que*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %8, align 8
  %16 = bitcast [11 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.qla2x00_error_entry.func, i32 0, i32 0), i64 11, i1 false)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @MSW(i32 %19)
  store i64 %20, i64* %10, align 8
  store %struct.req_que* null, %struct.req_que** %11, align 8
  %21 = load i32, i32* @DID_ERROR, align 4
  %22 = shl i32 %21, 16
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @ql_dbg_async, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ql_dbg(i32 %23, %struct.TYPE_15__* %24, i32 20522, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %3
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = load %struct.req_que**, %struct.req_que*** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.req_que*, %struct.req_que** %37, i64 %38
  %40 = load %struct.req_que*, %struct.req_que** %39, align 8
  %41 = icmp ne %struct.req_que* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34, %3
  br label %76

43:                                               ; preds = %34
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 1
  %46 = load %struct.req_que**, %struct.req_que*** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.req_que*, %struct.req_que** %46, i64 %47
  %49 = load %struct.req_que*, %struct.req_que** %48, align 8
  store %struct.req_que* %49, %struct.req_que** %11, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RF_BUSY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i32, i32* @DID_BUS_BUSY, align 4
  %58 = shl i32 %57, 16
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %56, %43
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %62 = load %struct.req_que*, %struct.req_que** %11, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call %struct.TYPE_14__* @qla2x00_get_sp_from_handle(%struct.TYPE_15__* %60, i8* %61, %struct.req_que* %62, %struct.TYPE_13__* %63)
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %7, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = icmp ne %struct.TYPE_14__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32 (%struct.qla_hw_data*, %struct.TYPE_14__*, i32)*, i32 (%struct.qla_hw_data*, %struct.TYPE_14__*, i32)** %69, align 8
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 %70(%struct.qla_hw_data* %71, %struct.TYPE_14__* %72, i32 %73)
  br label %96

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %42
  %77 = load i32, i32* @ql_log_warn, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = call i32 @ql_log(i32 %77, %struct.TYPE_15__* %78, i32 20528, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %81 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  br label %93

88:                                               ; preds = %76
  %89 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_15__* %94)
  br label %96

96:                                               ; preds = %93, %67
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @MSW(i32) #2

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_15__*, i32, i8*, i32) #2

declare dso_local %struct.TYPE_14__* @qla2x00_get_sp_from_handle(%struct.TYPE_15__*, i8*, %struct.req_que*, %struct.TYPE_13__*) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*) #2

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
