; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_send_statistics_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_send_statistics_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32 }
%struct.SmsMsgHdr_ST = type { i32, i32, i32, i32, i32 }

@MSG_SMS_GET_STATISTICS_REQ = common dso_local global i32 0, align 4
@DVBT_BDA_CONTROL_MSG_ID = common dso_local global i32 0, align 4
@HIF_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsdvb_client_t*)* @smsdvb_send_statistics_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_send_statistics_request(%struct.smsdvb_client_t* %0) #0 {
  %2 = alloca %struct.smsdvb_client_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.SmsMsgHdr_ST, align 4
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %2, align 8
  %5 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %4, i32 0, i32 0
  %6 = load i32, i32* @MSG_SMS_GET_STATISTICS_REQ, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %4, i32 0, i32 1
  %8 = load i32, i32* @DVBT_BDA_CONTROL_MSG_ID, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %4, i32 0, i32 2
  %10 = load i32, i32* @HIF_TASK, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %4, i32 0, i32 3
  store i32 20, i32* %11, align 4
  %12 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %4, i32 0, i32 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %14 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %2, align 8
  %15 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %14, i32 0, i32 0
  %16 = call i32 @smsdvb_sendrequest_and_wait(%struct.smsdvb_client_t* %13, %struct.SmsMsgHdr_ST* %4, i32 20, i32* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @smsdvb_sendrequest_and_wait(%struct.smsdvb_client_t*, %struct.SmsMsgHdr_ST*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
