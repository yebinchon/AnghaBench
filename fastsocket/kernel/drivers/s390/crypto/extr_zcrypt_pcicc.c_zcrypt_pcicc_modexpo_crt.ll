; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcicc.c_zcrypt_pcicc_modexpo_crt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcicc.c_zcrypt_pcicc_modexpo_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zcrypt_device = type { i32 }
%struct.ica_rsa_modexpo_crt = type { i32, i32 }
%struct.ap_message = type { i8*, %struct.completion*, i64, i32, i32 }
%struct.completion = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@zcrypt_pcicc_receive = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zcrypt_device*, %struct.ica_rsa_modexpo_crt*)* @zcrypt_pcicc_modexpo_crt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zcrypt_pcicc_modexpo_crt(%struct.zcrypt_device* %0, %struct.ica_rsa_modexpo_crt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca %struct.ica_rsa_modexpo_crt*, align 8
  %6 = alloca %struct.ap_message, align 8
  %7 = alloca %struct.completion, align 4
  %8 = alloca i32, align 4
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %4, align 8
  store %struct.ica_rsa_modexpo_crt* %1, %struct.ica_rsa_modexpo_crt** %5, align 8
  %9 = call i32 @ap_init_message(%struct.ap_message* %6)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @ENOMEM, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %3, align 8
  br label %70

20:                                               ; preds = %2
  %21 = load i32, i32* @zcrypt_pcicc_receive, align 4
  %22 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 %27, 32
  %29 = call i64 @atomic_inc_return(i32* @zcrypt_step)
  %30 = add i64 %28, %29
  %31 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  store %struct.completion* %7, %struct.completion** %32, align 8
  %33 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %34 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %5, align 8
  %35 = call i32 @ICACRT_msg_to_type6CRT_msg(%struct.zcrypt_device* %33, %struct.ap_message* %6, %struct.ica_rsa_modexpo_crt* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  br label %63

39:                                               ; preds = %20
  %40 = call i32 @init_completion(%struct.completion* %7)
  %41 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %42 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ap_queue_message(i32 %43, %struct.ap_message* %6)
  %45 = call i32 @wait_for_completion_interruptible(%struct.completion* %7)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %50 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %5, align 8
  %51 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %5, align 8
  %54 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @convert_response(%struct.zcrypt_device* %49, %struct.ap_message* %6, i32 %52, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %62

57:                                               ; preds = %39
  %58 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %59 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ap_cancel_message(i32 %60, %struct.ap_message* %6)
  br label %62

62:                                               ; preds = %57, %48
  br label %63

63:                                               ; preds = %62, %38
  %64 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = call i32 @free_page(i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %63, %17
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @ap_init_message(%struct.ap_message*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @ICACRT_msg_to_type6CRT_msg(%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_rsa_modexpo_crt*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @ap_queue_message(i32, %struct.ap_message*) #1

declare dso_local i32 @wait_for_completion_interruptible(%struct.completion*) #1

declare dso_local i32 @convert_response(%struct.zcrypt_device*, %struct.ap_message*, i32, i32) #1

declare dso_local i32 @ap_cancel_message(i32, %struct.ap_message*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
