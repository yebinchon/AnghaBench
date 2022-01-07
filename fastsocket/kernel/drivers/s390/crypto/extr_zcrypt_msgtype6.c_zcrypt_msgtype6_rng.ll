; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_zcrypt_msgtype6_rng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_zcrypt_msgtype6_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zcrypt_device = type { i32 }
%struct.ap_message = type { i32, %struct.response_type*, i64, i32 }
%struct.response_type = type { i32, i32 }

@PCIXCC_RESPONSE_TYPE_XCRB = common dso_local global i32 0, align 4
@MSGTYPE06_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@zcrypt_msgtype6_receive = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4
@ZCRYPT_RNG_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zcrypt_device*, i8*)* @zcrypt_msgtype6_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zcrypt_msgtype6_rng(%struct.zcrypt_device* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ap_message, align 8
  %7 = alloca %struct.response_type, align 4
  %8 = alloca i32, align 4
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 1
  %11 = load i32, i32* @PCIXCC_RESPONSE_TYPE_XCRB, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @ap_init_message(%struct.ap_message* %6)
  %13 = load i32, i32* @MSGTYPE06_MAX_MSG_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kmalloc(i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @ENOMEM, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %3, align 8
  br label %64

23:                                               ; preds = %2
  %24 = load i32, i32* @zcrypt_msgtype6_receive, align 4
  %25 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 %28, 32
  %30 = call i64 @atomic_inc_return(i32* @zcrypt_step)
  %31 = add i64 %29, %30
  %32 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 2
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  store %struct.response_type* %7, %struct.response_type** %33, align 8
  %34 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %35 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ZCRYPT_RNG_BUFFER_SIZE, align 4
  %38 = call i32 @rng_type6CPRB_msgX(i32 %36, %struct.ap_message* %6, i32 %37)
  %39 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 0
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %42 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ap_queue_message(i32 %43, %struct.ap_message* %6)
  %45 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 0
  %46 = call i32 @wait_for_completion_interruptible(i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %23
  %50 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @convert_response_rng(%struct.zcrypt_device* %50, %struct.ap_message* %6, i8* %51)
  store i32 %52, i32* %8, align 4
  br label %58

53:                                               ; preds = %23
  %54 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %55 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ap_cancel_message(i32 %56, %struct.ap_message* %6)
  br label %58

58:                                               ; preds = %53, %49
  %59 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kfree(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %58, %20
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i32 @ap_init_message(%struct.ap_message*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @rng_type6CPRB_msgX(i32, %struct.ap_message*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ap_queue_message(i32, %struct.ap_message*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @convert_response_rng(%struct.zcrypt_device*, %struct.ap_message*, i8*) #1

declare dso_local i32 @ap_cancel_message(i32, %struct.ap_message*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
