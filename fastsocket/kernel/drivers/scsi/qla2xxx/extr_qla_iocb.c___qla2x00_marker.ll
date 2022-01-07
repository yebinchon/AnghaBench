; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c___qla2x00_marker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c___qla2x00_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que**, i32 }
%struct.req_que = type { i32 }
%struct.rsp_que = type { i32 }
%struct.TYPE_2__ = type { i8*, i32, i64, i32 }
%struct.mrk_entry_24xx = type { i8*, i32, i8**, i8* }
%struct.mrk_entry_fx00 = type { i8**, i8*, i64, i8* }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate Marker IOCB.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MARKER_TYPE = common dso_local global i32 0, align 4
@MK_SYNC_ALL = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.req_que*, %struct.rsp_que*, i32, i32, i64)* @__qla2x00_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qla2x00_marker(%struct.scsi_qla_host* %0, %struct.req_que* %1, %struct.rsp_que* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_qla_host*, align 8
  %9 = alloca %struct.req_que*, align 8
  %10 = alloca %struct.rsp_que*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca %struct.mrk_entry_24xx*, align 8
  %16 = alloca %struct.mrk_entry_fx00*, align 8
  %17 = alloca %struct.qla_hw_data*, align 8
  %18 = alloca i32*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %8, align 8
  store %struct.req_que* %1, %struct.req_que** %9, align 8
  store %struct.rsp_que* %2, %struct.rsp_que** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.mrk_entry_24xx* null, %struct.mrk_entry_24xx** %15, align 8
  store %struct.mrk_entry_fx00* null, %struct.mrk_entry_fx00** %16, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %17, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @pci_get_drvdata(i32 %24)
  store i32* %25, i32** %18, align 8
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 0
  %28 = load %struct.req_que**, %struct.req_que*** %27, align 8
  %29 = getelementptr inbounds %struct.req_que*, %struct.req_que** %28, i64 0
  %30 = load %struct.req_que*, %struct.req_que** %29, align 8
  store %struct.req_que* %30, %struct.req_que** %9, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %32 = call i64 @qla2x00_alloc_iocbs(%struct.scsi_qla_host* %31, i32* null)
  %33 = inttoptr i64 %32 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %14, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load i32, i32* @ql_log_warn, align 4
  %38 = load i32*, i32** %18, align 8
  %39 = call i32 @ql_log(i32 %37, i32* %38, i32 12326, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %40, i32* %7, align 4
  br label %149

41:                                               ; preds = %6
  %42 = load i32, i32* @MARKER_TYPE, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @MK_SYNC_ALL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %143

51:                                               ; preds = %41
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %53 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %57 = bitcast %struct.TYPE_2__* %56 to %struct.mrk_entry_fx00*
  store %struct.mrk_entry_fx00* %57, %struct.mrk_entry_fx00** %16, align 8
  %58 = load %struct.req_que*, %struct.req_que** %9, align 8
  %59 = getelementptr inbounds %struct.req_que, %struct.req_que* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mrk_entry_fx00*, %struct.mrk_entry_fx00** %16, align 8
  %62 = getelementptr inbounds %struct.mrk_entry_fx00, %struct.mrk_entry_fx00* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @MAKE_HANDLE(i32 %60, i8* %63)
  %65 = load %struct.mrk_entry_fx00*, %struct.mrk_entry_fx00** %16, align 8
  %66 = getelementptr inbounds %struct.mrk_entry_fx00, %struct.mrk_entry_fx00* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mrk_entry_fx00*, %struct.mrk_entry_fx00** %16, align 8
  %68 = getelementptr inbounds %struct.mrk_entry_fx00, %struct.mrk_entry_fx00* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.mrk_entry_fx00*, %struct.mrk_entry_fx00** %16, align 8
  %72 = getelementptr inbounds %struct.mrk_entry_fx00, %struct.mrk_entry_fx00* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i8* @LSB(i32 %73)
  %75 = load %struct.mrk_entry_fx00*, %struct.mrk_entry_fx00** %16, align 8
  %76 = getelementptr inbounds %struct.mrk_entry_fx00, %struct.mrk_entry_fx00* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  store i8* %74, i8** %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i8* @MSB(i32 %79)
  %81 = load %struct.mrk_entry_fx00*, %struct.mrk_entry_fx00** %16, align 8
  %82 = getelementptr inbounds %struct.mrk_entry_fx00, %struct.mrk_entry_fx00* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 2
  store i8* %80, i8** %84, align 8
  %85 = load %struct.mrk_entry_fx00*, %struct.mrk_entry_fx00** %16, align 8
  %86 = getelementptr inbounds %struct.mrk_entry_fx00, %struct.mrk_entry_fx00* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = call i32 @host_to_fcp_swap(i8** %87, i32 8)
  br label %142

89:                                               ; preds = %51
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %91 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %95 = bitcast %struct.TYPE_2__* %94 to %struct.mrk_entry_24xx*
  store %struct.mrk_entry_24xx* %95, %struct.mrk_entry_24xx** %15, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %15, align 8
  %99 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i8* @LSB(i32 %100)
  %102 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %15, align 8
  %103 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* %101, i8** %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i8* @MSB(i32 %106)
  %108 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %15, align 8
  %109 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  store i8* %107, i8** %111, align 8
  %112 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %15, align 8
  %113 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %112, i32 0, i32 2
  %114 = load i8**, i8*** %113, align 8
  %115 = call i32 @host_to_fcp_swap(i8** %114, i32 8)
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %117 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %15, align 8
  %120 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.req_que*, %struct.req_que** %9, align 8
  %122 = getelementptr inbounds %struct.req_que, %struct.req_que* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %15, align 8
  %125 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @MAKE_HANDLE(i32 %123, i8* %126)
  %128 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %15, align 8
  %129 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %141

130:                                              ; preds = %89
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @SET_TARGET_ID(%struct.qla_hw_data* %131, i32 %134, i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = call i8* @cpu_to_le16(i32 %137)
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %130, %93
  br label %142

142:                                              ; preds = %141, %55
  br label %143

143:                                              ; preds = %142, %41
  %144 = call i32 (...) @wmb()
  %145 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %146 = load %struct.req_que*, %struct.req_que** %9, align 8
  %147 = call i32 @qla2x00_start_iocbs(%struct.scsi_qla_host* %145, %struct.req_que* %146)
  %148 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %143, %36
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i64 @qla2x00_alloc_iocbs(%struct.scsi_qla_host*, i32*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i8* @MAKE_HANDLE(i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @LSB(i32) #1

declare dso_local i8* @MSB(i32) #1

declare dso_local i32 @host_to_fcp_swap(i8**, i32) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @SET_TARGET_ID(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qla2x00_start_iocbs(%struct.scsi_qla_host*, %struct.req_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
