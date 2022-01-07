; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_command_task_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_command_task_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.scsi_cmnd* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_cmnd = type { i64, i64, i32 (%struct.scsi_cmnd*)*, i32* }
%struct.fcp_resp_with_ext = type { i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@FSF_FEATURE_MEASUREMENT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"erro\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"retr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"norm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_send_fcp_command_task_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_send_fcp_command_task_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.fcp_resp_with_ext*, align 8
  %5 = alloca i64, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @read_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 3
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = icmp ne %struct.scsi_cmnd* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %23 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @read_unlock_irqrestore(i32* %25, i64 %26)
  br label %137

28:                                               ; preds = %1
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %30 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %39 = call i32 @set_host_byte(%struct.scsi_cmnd* %37, i32 %38)
  br label %85

40:                                               ; preds = %28
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %42 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %60 [
    i32 130, label %47
    i32 129, label %47
    i32 131, label %51
    i32 132, label %54
    i32 128, label %57
  ]

47:                                               ; preds = %40, %40
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %49 = load i32, i32* @DID_ERROR, align 4
  %50 = call i32 @set_host_byte(%struct.scsi_cmnd* %48, i32 %49)
  br label %85

51:                                               ; preds = %40
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = call i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd* %52, i32 1)
  br label %85

54:                                               ; preds = %40
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = call i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd* %55, i32 2)
  br label %85

57:                                               ; preds = %40
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %59 = call i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd* %58, i32 3)
  br label %85

60:                                               ; preds = %40
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to %struct.fcp_resp_with_ext*
  store %struct.fcp_resp_with_ext* %67, %struct.fcp_resp_with_ext** %4, align 8
  %68 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %4, align 8
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %70 = call i32 @zfcp_fc_eval_fcp_rsp(%struct.fcp_resp_with_ext* %68, %struct.scsi_cmnd* %69)
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FSF_FEATURE_MEASUREMENT_DATA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %60
  %80 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %81 = call i32 @zfcp_fsf_req_latency(%struct.zfcp_fsf_req* %80)
  br label %82

82:                                               ; preds = %79, %60
  %83 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %84 = call i32 @zfcp_fsf_trace_latency(%struct.zfcp_fsf_req* %83)
  br label %85

85:                                               ; preds = %82, %57, %54, %51, %47, %36
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %92 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %97 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %98 = call i32 @zfcp_dbf_scsi_result(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3, i32 %95, %struct.scsi_cmnd* %96, %struct.zfcp_fsf_req* %97)
  br label %123

99:                                               ; preds = %85
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %106 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %111 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %112 = call i32 @zfcp_dbf_scsi_result(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %109, %struct.scsi_cmnd* %110, %struct.zfcp_fsf_req* %111)
  br label %122

113:                                              ; preds = %99
  %114 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %115 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %120 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %121 = call i32 @zfcp_dbf_scsi_result(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 6, i32 %118, %struct.scsi_cmnd* %119, %struct.zfcp_fsf_req* %120)
  br label %122

122:                                              ; preds = %113, %104
  br label %123

123:                                              ; preds = %122, %90
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 3
  store i32* null, i32** %125, align 8
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 2
  %128 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %127, align 8
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %130 = call i32 %128(%struct.scsi_cmnd* %129)
  %131 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %132 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @read_unlock_irqrestore(i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %123, %21
  ret void
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @zfcp_scsi_dif_sense_error(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @zfcp_fc_eval_fcp_rsp(%struct.fcp_resp_with_ext*, %struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_fsf_req_latency(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_trace_latency(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_dbf_scsi_result(i8*, i32, i32, %struct.scsi_cmnd*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
