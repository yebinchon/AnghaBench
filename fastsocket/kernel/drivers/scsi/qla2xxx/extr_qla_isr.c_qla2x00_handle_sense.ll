; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_handle_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_handle_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }
%struct.rsp_que = type { %struct.TYPE_10__* }
%struct.scsi_cmnd = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Check condition Sense data, nexus%ld:%d:%d cmd=%p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i64, i64, %struct.rsp_que*, i32)* @qla2x00_handle_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_handle_sense(%struct.TYPE_10__* %0, i32* %1, i64 %2, i64 %3, %struct.rsp_que* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rsp_que*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_qla_host*, align 8
  %14 = alloca %struct.scsi_cmnd*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.rsp_que* %4, %struct.rsp_que** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %19, align 8
  store %struct.scsi_qla_host* %20, %struct.scsi_qla_host** %13, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_10__* %21)
  store %struct.scsi_cmnd* %22, %struct.scsi_cmnd** %14, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %6
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_10__* %29, i64 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_10__* %32, i64 %35)
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %28
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @memcpy(i64 %46, i32* %47, i64 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_10__* %50, i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %15, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %15, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_10__* %60, i64 %61)
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %43
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %68 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %67, i32 0, i32 0
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %65, %43
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %72
  %76 = load i64, i64* @ql_dbg_io, align 8
  %77 = load i64, i64* @ql_dbg_buffer, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %83, align 8
  %85 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %98 = call i32 @ql_dbg(i64 %78, %struct.scsi_qla_host* %79, i32 12316, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %91, i32 %96, %struct.scsi_cmnd* %97)
  %99 = load i64, i64* @ql_dbg_io, align 8
  %100 = load i64, i64* @ql_dbg_buffer, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @ql_dump_buffer(i64 %101, %struct.scsi_qla_host* %102, i32 12331, i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %75, %72
  ret void
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_10__*) #1

declare dso_local i32 @SET_CMD_SENSE_LEN(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @SET_CMD_SENSE_PTR(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @ql_dbg(i64, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.scsi_qla_host*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
