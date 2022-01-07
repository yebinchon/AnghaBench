; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_save_queue_ptrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_save_queue_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.rsp_que**, %struct.rsp_que** }
%struct.rsp_que = type { i64, i32, i32, i64, i32, i32 }
%struct.req_que = type { i64, i32, i32, i64, i32, i32 }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"req: %p, ring_fx00: %p, length_fx00: 0x%x,req->dma_fx00: 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"rsp: %p, ring_fx00: %p, length_fx00: 0x%x,rsp->dma_fx00: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qlafx00_save_queue_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_save_queue_ptrs(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.req_que*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %3, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 1
  %11 = load %struct.rsp_que**, %struct.rsp_que*** %10, align 8
  %12 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %11, i64 0
  %13 = load %struct.rsp_que*, %struct.rsp_que** %12, align 8
  %14 = bitcast %struct.rsp_que* %13 to %struct.req_que*
  store %struct.req_que* %14, %struct.req_que** %4, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  %17 = load %struct.rsp_que**, %struct.rsp_que*** %16, align 8
  %18 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %17, i64 0
  %19 = load %struct.rsp_que*, %struct.rsp_que** %18, align 8
  store %struct.rsp_que* %19, %struct.rsp_que** %5, align 8
  %20 = load %struct.req_que*, %struct.req_que** %4, align 8
  %21 = getelementptr inbounds %struct.req_que, %struct.req_que* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.req_que*, %struct.req_que** %4, align 8
  %24 = getelementptr inbounds %struct.req_que, %struct.req_que* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.req_que*, %struct.req_que** %4, align 8
  %26 = getelementptr inbounds %struct.req_que, %struct.req_que* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.req_que*, %struct.req_que** %4, align 8
  %29 = getelementptr inbounds %struct.req_que, %struct.req_que* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.req_que*, %struct.req_que** %4, align 8
  %31 = getelementptr inbounds %struct.req_que, %struct.req_que* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.req_que*, %struct.req_que** %4, align 8
  %34 = getelementptr inbounds %struct.req_que, %struct.req_que* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %36 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %39 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %41 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %44 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %46 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %49 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @ql_dbg_init, align 4
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %52 = load %struct.req_que*, %struct.req_que** %4, align 8
  %53 = bitcast %struct.req_que* %52 to %struct.rsp_que*
  %54 = load %struct.req_que*, %struct.req_que** %4, align 8
  %55 = getelementptr inbounds %struct.req_que, %struct.req_que* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.req_que*, %struct.req_que** %4, align 8
  %58 = getelementptr inbounds %struct.req_que, %struct.req_que* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.req_que*, %struct.req_que** %4, align 8
  %61 = getelementptr inbounds %struct.req_que, %struct.req_que* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @ql_dbg(i32 %50, %struct.scsi_qla_host* %51, i32 301, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.rsp_que* %53, i32 %56, i32 %59, i32 %63)
  %65 = load i32, i32* @ql_dbg_init, align 4
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %67 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %68 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %69 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %72 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %75 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @ql_dbg(i32 %65, %struct.scsi_qla_host* %66, i32 302, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), %struct.rsp_que* %67, i32 %70, i32 %73, i32 %77)
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.rsp_que*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
