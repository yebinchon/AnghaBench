; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smsclient_sendrequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smsclient_sendrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_client_t = type { %struct.smscore_device_t* }
%struct.smscore_device_t = type { i32 (i32, i8*, i64)*, i32 }
%struct.SmsMsgHdr_ST = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Got NULL client\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Got NULL coredev\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smsclient_sendrequest(%struct.smscore_client_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_client_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.smscore_device_t*, align 8
  %9 = alloca %struct.SmsMsgHdr_ST*, align 8
  %10 = alloca i32, align 4
  store %struct.smscore_client_t* %0, %struct.smscore_client_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.SmsMsgHdr_ST*
  store %struct.SmsMsgHdr_ST* %12, %struct.SmsMsgHdr_ST** %9, align 8
  %13 = load %struct.smscore_client_t*, %struct.smscore_client_t** %5, align 8
  %14 = icmp eq %struct.smscore_client_t* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @sms_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.smscore_client_t*, %struct.smscore_client_t** %5, align 8
  %21 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %20, i32 0, i32 0
  %22 = load %struct.smscore_device_t*, %struct.smscore_device_t** %21, align 8
  store %struct.smscore_device_t* %22, %struct.smscore_device_t** %8, align 8
  %23 = load %struct.smscore_device_t*, %struct.smscore_device_t** %8, align 8
  %24 = icmp eq %struct.smscore_device_t* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = call i32 @sms_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %19
  %30 = load %struct.smscore_client_t*, %struct.smscore_client_t** %5, align 8
  %31 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %30, i32 0, i32 0
  %32 = load %struct.smscore_device_t*, %struct.smscore_device_t** %31, align 8
  %33 = load %struct.smscore_client_t*, %struct.smscore_client_t** %5, align 8
  %34 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %9, align 8
  %35 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @smscore_validate_client(%struct.smscore_device_t* %32, %struct.smscore_client_t* %33, i32 0, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %29
  %43 = load %struct.smscore_device_t*, %struct.smscore_device_t** %8, align 8
  %44 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %43, i32 0, i32 0
  %45 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %44, align 8
  %46 = load %struct.smscore_device_t*, %struct.smscore_device_t** %8, align 8
  %47 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 %45(i32 %48, i8* %49, i64 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %40, %25, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @sms_err(i8*) #1

declare dso_local i32 @smscore_validate_client(%struct.smscore_device_t*, %struct.smscore_client_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
