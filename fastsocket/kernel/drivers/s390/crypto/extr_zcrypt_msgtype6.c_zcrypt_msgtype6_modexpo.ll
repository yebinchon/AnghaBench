; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_zcrypt_msgtype6_modexpo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_zcrypt_msgtype6_modexpo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zcrypt_device = type { i32 }
%struct.ica_rsa_modexpo = type { i32, i32 }
%struct.ap_message = type { i8*, %struct.response_type*, i64, i32 }
%struct.response_type = type { i32, i32 }

@PCIXCC_RESPONSE_TYPE_ICA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@zcrypt_msgtype6_receive = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zcrypt_device*, %struct.ica_rsa_modexpo*)* @zcrypt_msgtype6_modexpo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zcrypt_msgtype6_modexpo(%struct.zcrypt_device* %0, %struct.ica_rsa_modexpo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca %struct.ica_rsa_modexpo*, align 8
  %6 = alloca %struct.ap_message, align 8
  %7 = alloca %struct.response_type, align 4
  %8 = alloca i32, align 4
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %4, align 8
  store %struct.ica_rsa_modexpo* %1, %struct.ica_rsa_modexpo** %5, align 8
  %9 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 1
  %11 = load i32, i32* @PCIXCC_RESPONSE_TYPE_ICA, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @ap_init_message(%struct.ap_message* %6)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @get_zeroed_page(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @ENOMEM, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %3, align 8
  br label %73

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
  %35 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %36 = call i32 @ICAMEX_msg_to_type6MEX_msgX(%struct.zcrypt_device* %34, %struct.ap_message* %6, %struct.ica_rsa_modexpo* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %66

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 0
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %44 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ap_queue_message(i32 %45, %struct.ap_message* %6)
  %47 = getelementptr inbounds %struct.response_type, %struct.response_type* %7, i32 0, i32 0
  %48 = call i32 @wait_for_completion_interruptible(i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %53 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %54 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %57 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @convert_response_ica(%struct.zcrypt_device* %52, %struct.ap_message* %6, i32 %55, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %65

60:                                               ; preds = %40
  %61 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %62 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ap_cancel_message(i32 %63, %struct.ap_message* %6)
  br label %65

65:                                               ; preds = %60, %51
  br label %66

66:                                               ; preds = %65, %39
  %67 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = call i32 @free_page(i64 %69)
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %66, %20
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local i32 @ap_init_message(%struct.ap_message*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @ICAMEX_msg_to_type6MEX_msgX(%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ap_queue_message(i32, %struct.ap_message*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @convert_response_ica(%struct.zcrypt_device*, %struct.ap_message*, i32, i32) #1

declare dso_local i32 @ap_cancel_message(i32, %struct.ap_message*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
