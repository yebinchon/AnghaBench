; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_tm_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_tm_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__, %struct.fc_port* }
%struct.TYPE_9__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.fc_port = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, %struct.req_que*, %struct.qla_hw_data* }
%struct.req_que = type { i32 }
%struct.qla_hw_data = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.tsk_mgmt_entry = type { i32, i32, i32, i32*, i32, i8*, i8*, i32, i32 }

@TSK_MGMT_IOCB_TYPE = common dso_local global i32 0, align 4
@TCF_LUN_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.tsk_mgmt_entry*)* @qla24xx_tm_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_tm_iocb(%struct.TYPE_14__* %0, %struct.tsk_mgmt_entry* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.tsk_mgmt_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_port*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.srb_iocb*, align 8
  %11 = alloca %struct.req_que*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.tsk_mgmt_entry* %1, %struct.tsk_mgmt_entry** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  store %struct.fc_port* %14, %struct.fc_port** %7, align 8
  %15 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %16 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store %struct.srb_iocb* %23, %struct.srb_iocb** %10, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.req_que*, %struct.req_que** %25, align 8
  store %struct.req_que* %26, %struct.req_que** %11, align 8
  %27 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %28 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  %32 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %33 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @TSK_MGMT_IOCB_TYPE, align 4
  %38 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %39 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %41 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.req_que*, %struct.req_que** %11, align 8
  %43 = getelementptr inbounds %struct.req_que, %struct.req_que* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %46 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @MAKE_HANDLE(i32 %44, i32 %47)
  %49 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %50 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %52 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %56 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 10
  %61 = mul nsw i32 %60, 2
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %64 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @cpu_to_le32(i64 %65)
  %67 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %68 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %70 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %75 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %79 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %84 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %88 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %93 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %91, i32* %95, align 4
  %96 = load %struct.fc_port*, %struct.fc_port** %7, align 8
  %97 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %96, i32 0, i32 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %102 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @TCF_LUN_RESET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %2
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %109 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %108, i32 0, i32 1
  %110 = call i32 @int_to_scsilun(i32 %107, i32* %109)
  %111 = load %struct.tsk_mgmt_entry*, %struct.tsk_mgmt_entry** %4, align 8
  %112 = getelementptr inbounds %struct.tsk_mgmt_entry, %struct.tsk_mgmt_entry* %111, i32 0, i32 1
  %113 = call i32 @host_to_fcp_swap(i32* %112, i32 4)
  br label %114

114:                                              ; preds = %106, %2
  ret void
}

declare dso_local i32 @MAKE_HANDLE(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @host_to_fcp_swap(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
