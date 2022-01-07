; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype50.c_zcrypt_cex2a_modexpo_crt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype50.c_zcrypt_cex2a_modexpo_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zcrypt_device = type { i64, i32 }
%struct.ica_rsa_modexpo_crt = type { i32, i32 }
%struct.ap_message = type { i8*, %struct.completion*, i64, i32 }
%struct.completion = type { i32 }

@ZCRYPT_CEX2A = common dso_local global i64 0, align 8
@MSGTYPE50_CRB2_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSGTYPE50_CRB3_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@zcrypt_cex2a_receive = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zcrypt_device*, %struct.ica_rsa_modexpo_crt*)* @zcrypt_cex2a_modexpo_crt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zcrypt_cex2a_modexpo_crt(%struct.zcrypt_device* %0, %struct.ica_rsa_modexpo_crt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca %struct.ica_rsa_modexpo_crt*, align 8
  %6 = alloca %struct.ap_message, align 8
  %7 = alloca %struct.completion, align 4
  %8 = alloca i32, align 4
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %4, align 8
  store %struct.ica_rsa_modexpo_crt* %1, %struct.ica_rsa_modexpo_crt** %5, align 8
  %9 = call i32 @ap_init_message(%struct.ap_message* %6)
  %10 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %11 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZCRYPT_CEX2A, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @MSGTYPE50_CRB2_MAX_MSG_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @MSGTYPE50_CRB3_MAX_MSG_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %3, align 8
  br label %79

32:                                               ; preds = %25
  %33 = load i32, i32* @zcrypt_cex2a_receive, align 4
  %34 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 %37, 32
  %39 = call i64 @atomic_inc_return(i32* @zcrypt_step)
  %40 = add i64 %38, %39
  %41 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  store %struct.completion* %7, %struct.completion** %42, align 8
  %43 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %44 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %5, align 8
  %45 = call i32 @ICACRT_msg_to_type50CRT_msg(%struct.zcrypt_device* %43, %struct.ap_message* %6, %struct.ica_rsa_modexpo_crt* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %73

49:                                               ; preds = %32
  %50 = call i32 @init_completion(%struct.completion* %7)
  %51 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %52 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ap_queue_message(i32 %53, %struct.ap_message* %6)
  %55 = call i32 @wait_for_completion_interruptible(%struct.completion* %7)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %60 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %5, align 8
  %61 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %5, align 8
  %64 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @convert_response(%struct.zcrypt_device* %59, %struct.ap_message* %6, i32 %62, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %72

67:                                               ; preds = %49
  %68 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %69 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ap_cancel_message(i32 %70, %struct.ap_message* %6)
  br label %72

72:                                               ; preds = %67, %58
  br label %73

73:                                               ; preds = %72, %48
  %74 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @kfree(i8* %75)
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %73, %29
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @ap_init_message(%struct.ap_message*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @ICACRT_msg_to_type50CRT_msg(%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo_crt*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @ap_queue_message(i32, %struct.ap_message*) #1

declare dso_local i32 @wait_for_completion_interruptible(%struct.completion*) #1

declare dso_local i32 @convert_response(%struct.zcrypt_device*, %struct.ap_message*, i32, i32) #1

declare dso_local i32 @ap_cancel_message(i32, %struct.ap_message*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
