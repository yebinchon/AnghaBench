; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_sendrequest_and_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsdvb.c_smsdvb_sendrequest_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32 }
%struct.completion = type { i32 }
%struct.SmsMsgHdr_ST = type { i32 }

@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsdvb_client_t*, i8*, i64, %struct.completion*)* @smsdvb_sendrequest_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsdvb_sendrequest_and_wait(%struct.smsdvb_client_t* %0, i8* %1, i64 %2, %struct.completion* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smsdvb_client_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.completion*, align 8
  %10 = alloca i32, align 4
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.completion* %3, %struct.completion** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.SmsMsgHdr_ST*
  %13 = call i32 @smsendian_handle_tx_message(%struct.SmsMsgHdr_ST* %12)
  %14 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %6, align 8
  %15 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @smsclient_sendrequest(i32 %16, i8* %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %35

24:                                               ; preds = %4
  %25 = load %struct.completion*, %struct.completion** %9, align 8
  %26 = call i32 @msecs_to_jiffies(i32 2000)
  %27 = call i64 @wait_for_completion_timeout(%struct.completion* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ETIME, align 4
  %32 = sub nsw i32 0, %31
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i32 [ 0, %29 ], [ %32, %30 ]
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @smsendian_handle_tx_message(%struct.SmsMsgHdr_ST*) #1

declare dso_local i32 @smsclient_sendrequest(i32, i8*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
