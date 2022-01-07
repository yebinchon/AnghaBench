; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_config_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_config_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, i64, i32, i32, i64, %struct.rsp_que**, %struct.rsp_que** }
%struct.rsp_que = type { i64, i8*, i8* }
%struct.req_que = type { i64, i8*, i8* }

@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for req_ring\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"req: %p req_ring pointer %p req len 0x%x req off 0x%x\0A, req->dma: 0x%llx\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for rsp_ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"rsp: %p rsp_ring pointer %p rsp len 0x%x rsp off 0x%x, rsp->dma: 0x%llx\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qlafx00_config_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlafx00_config_queues(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.rsp_que*, align 8
  %7 = alloca i8*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %4, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 7
  %13 = load %struct.rsp_que**, %struct.rsp_que*** %12, align 8
  %14 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %13, i64 0
  %15 = load %struct.rsp_que*, %struct.rsp_que** %14, align 8
  %16 = bitcast %struct.rsp_que* %15 to %struct.req_que*
  store %struct.req_que* %16, %struct.req_que** %5, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 6
  %19 = load %struct.rsp_que**, %struct.rsp_que*** %18, align 8
  %20 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %19, i64 0
  %21 = load %struct.rsp_que*, %struct.rsp_que** %20, align 8
  store %struct.rsp_que* %21, %struct.rsp_que** %6, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @pci_resource_start(i32 %24, i32 2)
  store i8* %25, i8** %7, align 8
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.req_que*, %struct.req_que** %5, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %34, i64 %38
  %40 = load %struct.req_que*, %struct.req_que** %5, align 8
  %41 = getelementptr inbounds %struct.req_que, %struct.req_que* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  %48 = load %struct.req_que*, %struct.req_que** %5, align 8
  %49 = getelementptr inbounds %struct.req_que, %struct.req_que* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.req_que*, %struct.req_que** %5, align 8
  %51 = getelementptr inbounds %struct.req_que, %struct.req_que* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %1
  %55 = load %struct.req_que*, %struct.req_que** %5, align 8
  %56 = getelementptr inbounds %struct.req_que, %struct.req_que* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54, %1
  %60 = load i32, i32* @ql_log_info, align 4
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ql_log_pci(i32 %60, i32 %63, i32 303, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %65, i32* %2, align 4
  br label %148

66:                                               ; preds = %54
  %67 = load i32, i32* @ql_dbg_init, align 4
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %69 = load %struct.req_que*, %struct.req_que** %5, align 8
  %70 = bitcast %struct.req_que* %69 to %struct.rsp_que*
  %71 = load %struct.req_que*, %struct.req_que** %5, align 8
  %72 = getelementptr inbounds %struct.req_que, %struct.req_que* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.req_que*, %struct.req_que** %5, align 8
  %75 = getelementptr inbounds %struct.req_que, %struct.req_que* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.req_que*, %struct.req_que** %5, align 8
  %83 = getelementptr inbounds %struct.req_que, %struct.req_que* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = call i32 @ql_dbg(i32 %67, %struct.scsi_qla_host* %68, i32 304, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), %struct.rsp_que* %70, i8* %73, i64 %76, i8* %81, i32 %85)
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %91 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %93 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %97 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %95, i64 %99
  %101 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %102 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %103, i64 %107
  %109 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %110 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %112 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %66
  %116 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %117 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115, %66
  %121 = load i32, i32* @ql_log_info, align 4
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ql_log_pci(i32 %121, i32 %124, i32 305, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %126, i32* %2, align 4
  br label %148

127:                                              ; preds = %115
  %128 = load i32, i32* @ql_dbg_init, align 4
  %129 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %130 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %131 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %132 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %135 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %138 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %143 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = call i32 @ql_dbg(i32 %128, %struct.scsi_qla_host* %129, i32 306, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), %struct.rsp_que* %130, i8* %133, i64 %136, i8* %141, i32 %145)
  %147 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %127, %120, %59
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i8* @pci_resource_start(i32, i32) #1

declare dso_local i32 @ql_log_pci(i32, i32, i32, i8*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.rsp_que*, i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
