; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_eval_fcp_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_eval_fcp_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcp_resp_with_ext = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.scsi_cmnd = type { i64, i32, i32 }
%struct.fcp_resp_rsp_info = type { i64 }

@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@FCP_RSP_LEN_VAL = common dso_local global i32 0, align 4
@FCP_TMF_CMPL = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@FCP_SNS_LEN_VAL = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@FCP_RESID_UNDER = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcp_resp_with_ext*, %struct.scsi_cmnd*)* @zfcp_fc_eval_fcp_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_eval_fcp_rsp(%struct.fcp_resp_with_ext* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fcp_resp_with_ext*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.fcp_resp_rsp_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fcp_resp_with_ext* %0, %struct.fcp_resp_with_ext** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = load i32, i32* @COMMAND_COMPLETE, align 4
  %12 = call i32 @set_msg_byte(%struct.scsi_cmnd* %10, i32 %11)
  %13 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %14 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %22 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FCP_RSP_LEN_VAL, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %32 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %31, i64 1
  %33 = bitcast %struct.fcp_resp_with_ext* %32 to %struct.fcp_resp_rsp_info*
  store %struct.fcp_resp_rsp_info* %33, %struct.fcp_resp_rsp_info** %5, align 8
  %34 = load %struct.fcp_resp_rsp_info*, %struct.fcp_resp_rsp_info** %5, align 8
  %35 = getelementptr inbounds %struct.fcp_resp_rsp_info, %struct.fcp_resp_rsp_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FCP_TMF_CMPL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = load i32, i32* @DID_OK, align 4
  %42 = call i32 @set_host_byte(%struct.scsi_cmnd* %40, i32 %41)
  br label %47

43:                                               ; preds = %30
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = load i32, i32* @DID_ERROR, align 4
  %46 = call i32 @set_host_byte(%struct.scsi_cmnd* %44, i32 %45)
  br label %122

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @FCP_SNS_LEN_VAL, align 4
  %51 = and i32 %49, %50
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %56 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %55, i64 1
  %57 = bitcast %struct.fcp_resp_with_ext* %56 to i8*
  store i8* %57, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @FCP_RSP_LEN_VAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %64 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %62, %54
  %71 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %72 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %76 = call i64 @min(i32 %74, i64 %75)
  store i64 %76, i64* %7, align 8
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @memcpy(i32 %79, i8* %80, i64 %81)
  br label %83

83:                                               ; preds = %70, %48
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @FCP_RESID_UNDER, align 4
  %86 = and i32 %84, %85
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %83
  %90 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %91 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %8, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %94, i64 %95)
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %98 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %97)
  %99 = load i64, i64* %8, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %89
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @FCP_SNS_LEN_VAL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %105
  %111 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %112 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SAM_STAT_GOOD, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %119 = load i32, i32* @DID_ERROR, align 4
  %120 = call i32 @set_host_byte(%struct.scsi_cmnd* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %110, %105, %89
  br label %122

122:                                              ; preds = %43, %121, %83
  ret void
}

declare dso_local i32 @set_msg_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
