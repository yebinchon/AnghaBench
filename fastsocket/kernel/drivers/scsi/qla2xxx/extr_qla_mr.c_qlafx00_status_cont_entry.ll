; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_status_cont_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_status_cont_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsp_que = type { %struct.TYPE_15__*, %struct.qla_hw_data* }
%struct.TYPE_15__ = type { i32 (%struct.qla_hw_data*, %struct.TYPE_15__*, i32)* }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.scsi_cmnd = type { i32 }

@ql_dbg_io = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"no SP, sp = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no fw sense data, sp = %p\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cmd is NULL: already returned to OS (sp=%p).\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"no sense data, sp = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"sp=%p sense_len=0x%x sense_ptr=%p.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsp_que*, %struct.TYPE_14__*)* @qlafx00_status_cont_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_status_cont_entry(%struct.rsp_que* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.rsp_que*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.rsp_que* %0, %struct.rsp_que** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %13 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %6, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.scsi_qla_host* @pci_get_drvdata(i32 %17)
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %7, align 8
  %19 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %20 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @ql_dbg_io, align 8
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, %struct.TYPE_15__*, ...) @ql_dbg(i64 %25, %struct.scsi_qla_host* %26, i32 12343, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %27)
  br label %141

29:                                               ; preds = %2
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = call i32 @GET_FW_SENSE_LEN(%struct.TYPE_15__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @ql_dbg_io, align 8
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, %struct.TYPE_15__*, ...) @ql_dbg(i64 %34, %struct.scsi_qla_host* %35, i32 12363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %36)
  br label %141

38:                                               ; preds = %29
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__* %39)
  store %struct.scsi_cmnd* %40, %struct.scsi_cmnd** %9, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %42 = icmp eq %struct.scsi_cmnd* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @ql_log_warn, align 4
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = call i32 @ql_log(i32 %44, %struct.scsi_qla_host* %45, i32 12347, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %46)
  %48 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %49 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %48, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %49, align 8
  br label %141

50:                                               ; preds = %38
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = call i32 @GET_CMD_SENSE_LEN(%struct.TYPE_15__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @ql_dbg_io, align 8
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, %struct.TYPE_15__*, ...) @ql_dbg(i64 %55, %struct.scsi_qla_host* %56, i32 12364, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_15__* %57)
  br label %110

59:                                               ; preds = %50
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = call i32 @GET_CMD_SENSE_LEN(%struct.TYPE_15__* %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = call i32* @GET_CMD_SENSE_PTR(%struct.TYPE_15__* %62)
  store i32* %63, i32** %11, align 8
  %64 = load i64, i64* @ql_dbg_io, align 8
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, %struct.TYPE_15__*, ...) @ql_dbg(i64 %64, %struct.scsi_qla_host* %65, i32 12367, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %66, i32 %67, i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ugt i64 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  store i32 4, i32* %5, align 4
  br label %76

74:                                               ; preds = %59
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i64, i64* @ql_dbg_io, align 8
  %78 = load i64, i64* @ql_dbg_buffer, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = bitcast %struct.TYPE_14__* %81 to i32*
  %83 = call i32 @ql_dump_buffer(i64 %79, %struct.scsi_qla_host* %80, i32 12366, i32* %82, i32 4)
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @memcpy(i32* %84, i32 %87, i32 %88)
  %90 = load i64, i64* @ql_dbg_io, align 8
  %91 = load i64, i64* @ql_dbg_buffer, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ql_dump_buffer(i64 %92, %struct.scsi_qla_host* %93, i32 12362, i32* %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %11, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_15__* %104, i32* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_15__* %107, i32 %108)
  br label %110

110:                                              ; preds = %76, %54
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = call i32 @GET_FW_SENSE_LEN(%struct.TYPE_15__* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %114, 4
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = sub i64 %118, 4
  br label %121

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i64 [ %119, %116 ], [ 0, %120 ]
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %10, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @SET_FW_SENSE_LEN(%struct.TYPE_15__* %124, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %121
  %130 = load %struct.rsp_que*, %struct.rsp_que** %3, align 8
  %131 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %130, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %131, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32 (%struct.qla_hw_data*, %struct.TYPE_15__*, i32)*, i32 (%struct.qla_hw_data*, %struct.TYPE_15__*, i32)** %133, align 8
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %138 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %134(%struct.qla_hw_data* %135, %struct.TYPE_15__* %136, i32 %139)
  br label %141

141:                                              ; preds = %24, %33, %43, %129, %121
  ret void
}

declare dso_local %struct.scsi_qla_host* @pci_get_drvdata(i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.scsi_qla_host*, i32, i8*, %struct.TYPE_15__*, ...) #1

declare dso_local i32 @GET_FW_SENSE_LEN(%struct.TYPE_15__*) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @GET_CMD_SENSE_LEN(%struct.TYPE_15__*) #1

declare dso_local i32* @GET_CMD_SENSE_PTR(%struct.TYPE_15__*) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.scsi_qla_host*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @SET_CMD_SENSE_PTR(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @SET_CMD_SENSE_LEN(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SET_FW_SENSE_LEN(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
