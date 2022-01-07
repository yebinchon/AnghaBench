; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_detect_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_detect_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32 }
%struct.SmsMsgHdr_ST = type { i32 }

@SMS_DMA_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSG_SMS_GET_VERSION_EX_REQ = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MSG_SMS_GET_VERSION_EX_REQ failed first try\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"MSG_SMS_GET_VERSION_EX_REQ failed second try, rc %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*)* @smscore_detect_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_detect_mode(%struct.smscore_device_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.SmsMsgHdr_ST*, align 8
  %6 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  %7 = load i64, i64* @SMS_DMA_ALIGNMENT, align 8
  %8 = add i64 4, %7
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @GFP_DMA, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @kmalloc(i64 %8, i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @SMS_ALIGN_ADDRESS(i8* %13)
  %15 = inttoptr i64 %14 to %struct.SmsMsgHdr_ST*
  store %struct.SmsMsgHdr_ST* %15, %struct.SmsMsgHdr_ST** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %23 = load i32, i32* @MSG_SMS_GET_VERSION_EX_REQ, align 4
  %24 = call i32 @SMS_INIT_MSG(%struct.SmsMsgHdr_ST* %22, i32 %23, i32 4)
  %25 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %26 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %27 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %28 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %31 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %30, i32 0, i32 0
  %32 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %25, %struct.SmsMsgHdr_ST* %26, i32 %29, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ETIME, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %21
  %38 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %40 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %39, i32 0, i32 1
  %41 = call i32 @msecs_to_jiffies(i32 5000)
  %42 = call i64 @wait_for_completion_timeout(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %46 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %47 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %48 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %51 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %50, i32 0, i32 0
  %52 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %45, %struct.SmsMsgHdr_ST* %46, i32 %49, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, ...) @sms_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %44
  br label %62

59:                                               ; preds = %37
  %60 = load i32, i32* @ETIME, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @SMS_ALIGN_ADDRESS(i8*) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.SmsMsgHdr_ST*, i32, i32) #1

declare dso_local i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t*, %struct.SmsMsgHdr_ST*, i32, i32*) #1

declare dso_local i32 @sms_err(i8*, ...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
