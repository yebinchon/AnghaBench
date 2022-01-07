; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_handle_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_handle_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }
%struct.rsp_que = type { %struct.TYPE_12__* }
%struct.scsi_cmnd = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"sense_len=0x%x par_sense_len=0x%x track_sense_len=0x%x.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Check condition Sense data, nexus%ld:%d:%d cmd=%p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i64, i64, %struct.rsp_que*, i32)* @qlafx00_handle_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_handle_sense(%struct.TYPE_12__* %0, i32* %1, i64 %2, i64 %3, %struct.rsp_que* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rsp_que*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_qla_host*, align 8
  %14 = alloca %struct.scsi_cmnd*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.rsp_que* %4, %struct.rsp_que** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %19, align 8
  store %struct.scsi_qla_host* %20, %struct.scsi_qla_host** %13, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_12__* %21)
  store %struct.scsi_cmnd* %22, %struct.scsi_cmnd** %14, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @SET_FW_SENSE_LEN(%struct.TYPE_12__* %23, i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %29, %6
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_12__* %32, i64 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_12__* %35, i64 %38)
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %44, %31
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @memcpy(i64 %49, i32* %50, i64 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = call i64 @GET_FW_SENSE_LEN(%struct.TYPE_12__* %54)
  %56 = load i64, i64* %10, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @SET_FW_SENSE_LEN(%struct.TYPE_12__* %53, i64 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_12__* %59, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %15, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %15, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_12__* %69, i64 %70)
  %72 = load i64, i64* @ql_dbg_io, align 8
  %73 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, i64, i64, i64, ...) @ql_dbg(i64 %72, %struct.scsi_qla_host* %73, i32 12365, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %75, i64 %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = call i64 @GET_FW_SENSE_LEN(%struct.TYPE_12__* %78)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %46
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %84 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %83, i32 0, i32 0
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %46
  %89 = load i64, i64* %10, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %88
  %92 = load i64, i64* @ql_dbg_io, align 8
  %93 = load i64, i64* @ql_dbg_buffer, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %99, align 8
  %101 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %117 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, i64, i64, i64, ...) @ql_dbg(i64 %94, %struct.scsi_qla_host* %95, i32 12345, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %103, i64 %109, i64 %115, %struct.scsi_cmnd* %116)
  %118 = load i64, i64* @ql_dbg_io, align 8
  %119 = load i64, i64* @ql_dbg_buffer, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @ql_dump_buffer(i64 %120, %struct.scsi_qla_host* %121, i32 12361, i64 %124, i64 %125)
  br label %127

127:                                              ; preds = %91, %88
  ret void
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_12__*) #1

declare dso_local i32 @SET_FW_SENSE_LEN(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @SET_CMD_SENSE_LEN(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @SET_CMD_SENSE_PTR(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i64 @GET_FW_SENSE_LEN(%struct.TYPE_12__*) #1

declare dso_local i32 @ql_dbg(i64, %struct.scsi_qla_host*, i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.scsi_qla_host*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
