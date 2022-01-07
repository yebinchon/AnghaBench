; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_process_response_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_process_response_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rsp_que = type { i64, i64, i32*, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sts_entry_fx00 = type { i64, i32 }
%struct.abort_iocb_entry_fx00 = type { i32 }
%struct.ioctl_iocb_entry_fx00 = type { i32 }

@RESPONSE_PROCESSED = common dso_local global i64 0, align 8
@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Received unknown response pkt type %x entry status=%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.rsp_que*)* @qlafx00_process_response_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_process_response_queue(%struct.scsi_qla_host* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca %struct.sts_entry_fx00*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %4, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %140

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %126, %13
  %15 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %16 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %15, i32 0, i32 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i64 @RD_REG_DWORD(i32* %18)
  %20 = load i64, i64* @RESPONSE_PROCESSED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %132

22:                                               ; preds = %14
  %23 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %24 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %6, align 8
  %26 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %27 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = call i32 @memcpy_fromio(i64 %28, %struct.TYPE_5__* %29, i32 8)
  %31 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %32 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.sts_entry_fx00*
  store %struct.sts_entry_fx00* %34, %struct.sts_entry_fx00** %5, align 8
  %35 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %36 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %40 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %43 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %22
  %47 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %48 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %50 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %49, i32 0, i32 5
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %53 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %52, i32 0, i32 4
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %53, align 8
  br label %59

54:                                               ; preds = %22
  %55 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %56 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %56, align 8
  br label %59

59:                                               ; preds = %54, %46
  %60 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %61 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %66 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 131
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %71 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %72 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %73 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %74 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %77 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @qlafx00_error_entry(%struct.scsi_qla_host* %70, %struct.rsp_que* %71, %struct.sts_entry_fx00* %72, i64 %75, i32 %78)
  br label %126

80:                                               ; preds = %64, %59
  %81 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %82 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %115 [
    i32 128, label %84
    i32 129, label %89
    i32 130, label %94
    i32 132, label %99
    i32 131, label %107
  ]

84:                                               ; preds = %80
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %86 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %87 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %88 = call i32 @qlafx00_status_entry(%struct.scsi_qla_host* %85, %struct.rsp_que* %86, %struct.sts_entry_fx00* %87)
  br label %125

89:                                               ; preds = %80
  %90 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %91 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %92 = bitcast %struct.sts_entry_fx00* %91 to i32*
  %93 = call i32 @qlafx00_status_cont_entry(%struct.rsp_que* %90, i32* %92)
  br label %125

94:                                               ; preds = %80
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %96 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %97 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %98 = call i32 @qlafx00_multistatus_entry(%struct.scsi_qla_host* %95, %struct.rsp_que* %96, %struct.sts_entry_fx00* %97)
  br label %125

99:                                               ; preds = %80
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %101 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %102 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %105 = bitcast %struct.sts_entry_fx00* %104 to %struct.abort_iocb_entry_fx00*
  %106 = call i32 @qlafx00_abort_iocb_entry(%struct.scsi_qla_host* %100, i32 %103, %struct.abort_iocb_entry_fx00* %105)
  br label %125

107:                                              ; preds = %80
  %108 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %109 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %110 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %113 = bitcast %struct.sts_entry_fx00* %112 to %struct.ioctl_iocb_entry_fx00*
  %114 = call i32 @qlafx00_ioctl_iosb_entry(%struct.scsi_qla_host* %108, i32 %111, %struct.ioctl_iocb_entry_fx00* %113)
  br label %125

115:                                              ; preds = %80
  %116 = load i32, i32* @ql_dbg_async, align 4
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %118 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %119 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %5, align 8
  %122 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ql_dbg(i32 %116, %struct.scsi_qla_host* %117, i32 20609, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %115, %107, %99, %94, %89, %84
  br label %126

126:                                              ; preds = %125, %69
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* @RESPONSE_PROCESSED, align 8
  %130 = call i32 @WRT_REG_DWORD(i32* %128, i64 %129)
  %131 = call i32 (...) @wmb()
  br label %14

132:                                              ; preds = %14
  %133 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %134 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %137 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @WRT_REG_DWORD(i32* %135, i64 %138)
  br label %140

140:                                              ; preds = %132, %12
  ret void
}

declare dso_local i64 @RD_REG_DWORD(i32*) #1

declare dso_local i32 @memcpy_fromio(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @qlafx00_error_entry(%struct.scsi_qla_host*, %struct.rsp_que*, %struct.sts_entry_fx00*, i64, i32) #1

declare dso_local i32 @qlafx00_status_entry(%struct.scsi_qla_host*, %struct.rsp_que*, %struct.sts_entry_fx00*) #1

declare dso_local i32 @qlafx00_status_cont_entry(%struct.rsp_que*, i32*) #1

declare dso_local i32 @qlafx00_multistatus_entry(%struct.scsi_qla_host*, %struct.rsp_que*, %struct.sts_entry_fx00*) #1

declare dso_local i32 @qlafx00_abort_iocb_entry(%struct.scsi_qla_host*, i32, %struct.abort_iocb_entry_fx00*) #1

declare dso_local i32 @qlafx00_ioctl_iosb_entry(%struct.scsi_qla_host*, i32, %struct.ioctl_iocb_entry_fx00*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i64) #1

declare dso_local i32 @WRT_REG_DWORD(i32*, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
