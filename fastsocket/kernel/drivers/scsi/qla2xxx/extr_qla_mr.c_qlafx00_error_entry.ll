; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_error_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_error_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que** }
%struct.req_que = type { i32 }
%struct.rsp_que = type { i32 }
%struct.sts_entry_fx00 = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.qla_hw_data*, %struct.TYPE_9__*, i32)* }

@__const.qlafx00_error_entry.func = private unnamed_addr constant [11 x i8] c"ERROR-IOCB\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"type of error status in response: 0x%x\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.rsp_que*, %struct.sts_entry_fx00*, i32, i32)* @qlafx00_error_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_error_entry(%struct.TYPE_10__* %0, %struct.rsp_que* %1, %struct.sts_entry_fx00* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.rsp_que*, align 8
  %8 = alloca %struct.sts_entry_fx00*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.qla_hw_data*, align 8
  %13 = alloca [11 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca %struct.req_que*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %7, align 8
  store %struct.sts_entry_fx00* %2, %struct.sts_entry_fx00** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %12, align 8
  %20 = bitcast [11 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.qlafx00_error_entry.func, i32 0, i32 0), i64 11, i1 false)
  %21 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %8, align 8
  %22 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @MSW(i32 %23)
  store i64 %24, i64* %14, align 8
  store %struct.req_que* null, %struct.req_que** %15, align 8
  %25 = load i32, i32* @DID_ERROR, align 4
  %26 = shl i32 %25, 16
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* @ql_dbg_async, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ql_dbg(i32 %27, %struct.TYPE_10__* %28, i32 20607, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = load %struct.req_que**, %struct.req_que*** %32, align 8
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds %struct.req_que*, %struct.req_que** %33, i64 %34
  %36 = load %struct.req_que*, %struct.req_que** %35, align 8
  store %struct.req_que* %36, %struct.req_que** %15, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0
  %39 = load %struct.req_que*, %struct.req_que** %15, align 8
  %40 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %8, align 8
  %41 = call %struct.TYPE_9__* @qla2x00_get_sp_from_handle(%struct.TYPE_10__* %37, i8* %38, %struct.req_que* %39, %struct.sts_entry_fx00* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %11, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %5
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32 (%struct.qla_hw_data*, %struct.TYPE_9__*, i32)*, i32 (%struct.qla_hw_data*, %struct.TYPE_9__*, i32)** %46, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 %47(%struct.qla_hw_data* %48, %struct.TYPE_9__* %49, i32 %50)
  br label %59

52:                                               ; preds = %5
  %53 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_10__* %57)
  br label %59

59:                                               ; preds = %52, %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @MSW(i32) #2

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*, i32) #2

declare dso_local %struct.TYPE_9__* @qla2x00_get_sp_from_handle(%struct.TYPE_10__*, i8*, %struct.req_que*, %struct.sts_entry_fx00*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
