; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_init_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_init_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.SmsMsgData_ST2 = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.SmsMsgHdr_ST2 = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"IR loading\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error initialization DTV IR sub-module\00", align 1
@SMS_DMA_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@MSG_SMS_START_IR_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Sending IR initialization message failed\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"IR port has not been detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*)* @smscore_init_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_init_ir(%struct.smscore_device_t* %0) #0 {
  %2 = alloca %struct.smscore_device_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SmsMsgData_ST2*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %2, align 8
  %7 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %8 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %11 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %10)
  %12 = call %struct.TYPE_7__* @sms_get_board(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %1
  %19 = call i32 @sms_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %21 = call i32 @sms_ir_init(%struct.smscore_device_t* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @sms_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %76

26:                                               ; preds = %18
  %27 = load i64, i64* @SMS_DMA_ALIGNMENT, align 8
  %28 = add i64 16, %27
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @GFP_DMA, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @kmalloc(i64 %28, i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @SMS_ALIGN_ADDRESS(i8* %36)
  %38 = inttoptr i64 %37 to %struct.SmsMsgData_ST2*
  store %struct.SmsMsgData_ST2* %38, %struct.SmsMsgData_ST2** %6, align 8
  %39 = load %struct.SmsMsgData_ST2*, %struct.SmsMsgData_ST2** %6, align 8
  %40 = getelementptr inbounds %struct.SmsMsgData_ST2, %struct.SmsMsgData_ST2* %39, i32 0, i32 0
  %41 = load i32, i32* @MSG_SMS_START_IR_REQ, align 4
  %42 = call i32 @SMS_INIT_MSG(%struct.TYPE_8__* %40, i32 %41, i32 16)
  %43 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %44 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.SmsMsgData_ST2*, %struct.SmsMsgData_ST2** %6, align 8
  %48 = getelementptr inbounds %struct.SmsMsgData_ST2, %struct.SmsMsgData_ST2* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %52 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.SmsMsgData_ST2*, %struct.SmsMsgData_ST2** %6, align 8
  %56 = getelementptr inbounds %struct.SmsMsgData_ST2, %struct.SmsMsgData_ST2* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.SmsMsgData_ST2*, %struct.SmsMsgData_ST2** %6, align 8
  %60 = bitcast %struct.SmsMsgData_ST2* %59 to %struct.SmsMsgHdr_ST2*
  %61 = call i32 @smsendian_handle_tx_message(%struct.SmsMsgHdr_ST2* %60)
  %62 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %63 = load %struct.SmsMsgData_ST2*, %struct.SmsMsgData_ST2** %6, align 8
  %64 = load %struct.SmsMsgData_ST2*, %struct.SmsMsgData_ST2** %6, align 8
  %65 = getelementptr inbounds %struct.SmsMsgData_ST2, %struct.SmsMsgData_ST2* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %69 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %68, i32 0, i32 0
  %70 = call i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %62, %struct.SmsMsgData_ST2* %63, i32 %67, i32* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @kfree(i8* %71)
  br label %75

73:                                               ; preds = %26
  %74 = call i32 @sms_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %35
  br label %76

76:                                               ; preds = %75, %24
  br label %79

77:                                               ; preds = %1
  %78 = call i32 @sms_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @sms_get_board(i32) #1

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local i32 @sms_info(i8*) #1

declare dso_local i32 @sms_ir_init(%struct.smscore_device_t*) #1

declare dso_local i32 @sms_err(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @SMS_ALIGN_ADDRESS(i8*) #1

declare dso_local i32 @SMS_INIT_MSG(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @smsendian_handle_tx_message(%struct.SmsMsgHdr_ST2*) #1

declare dso_local i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t*, %struct.SmsMsgData_ST2*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
