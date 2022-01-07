; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_zcrypt_pcica_modexpo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_zcrypt_pcica_modexpo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zcrypt_device = type { i32 }
%struct.ica_rsa_modexpo = type { i32, i32 }
%struct.ap_message = type { i32, %struct.completion*, i64, i32 }
%struct.completion = type { i32 }

@PCICA_MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@zcrypt_pcica_receive = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zcrypt_device*, %struct.ica_rsa_modexpo*)* @zcrypt_pcica_modexpo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zcrypt_pcica_modexpo(%struct.zcrypt_device* %0, %struct.ica_rsa_modexpo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca %struct.ica_rsa_modexpo*, align 8
  %6 = alloca %struct.ap_message, align 8
  %7 = alloca %struct.completion, align 4
  %8 = alloca i32, align 4
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %4, align 8
  store %struct.ica_rsa_modexpo* %1, %struct.ica_rsa_modexpo** %5, align 8
  %9 = call i32 @ap_init_message(%struct.ap_message* %6)
  %10 = load i32, i32* @PCICA_MAX_MESSAGE_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @kmalloc(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @ENOMEM, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %3, align 8
  br label %67

20:                                               ; preds = %2
  %21 = load i32, i32* @zcrypt_pcica_receive, align 4
  %22 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = shl i64 %25, 32
  %27 = call i64 @atomic_inc_return(i32* @zcrypt_step)
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  store %struct.completion* %7, %struct.completion** %30, align 8
  %31 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %32 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %33 = call i32 @ICAMEX_msg_to_type4MEX_msg(%struct.zcrypt_device* %31, %struct.ap_message* %6, %struct.ica_rsa_modexpo* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %61

37:                                               ; preds = %20
  %38 = call i32 @init_completion(%struct.completion* %7)
  %39 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %40 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ap_queue_message(i32 %41, %struct.ap_message* %6)
  %43 = call i32 @wait_for_completion_interruptible(%struct.completion* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %48 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %49 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %52 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @convert_response(%struct.zcrypt_device* %47, %struct.ap_message* %6, i32 %50, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %60

55:                                               ; preds = %37
  %56 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %57 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ap_cancel_message(i32 %58, %struct.ap_message* %6)
  br label %60

60:                                               ; preds = %55, %46
  br label %61

61:                                               ; preds = %60, %36
  %62 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @kfree(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %61, %17
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @ap_init_message(%struct.ap_message*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @ICAMEX_msg_to_type4MEX_msg(%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @ap_queue_message(i32, %struct.ap_message*) #1

declare dso_local i32 @wait_for_completion_interruptible(%struct.completion*) #1

declare dso_local i32 @convert_response(%struct.zcrypt_device*, %struct.ap_message*, i32, i32) #1

declare dso_local i32 @ap_cancel_message(i32, %struct.ap_message*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
