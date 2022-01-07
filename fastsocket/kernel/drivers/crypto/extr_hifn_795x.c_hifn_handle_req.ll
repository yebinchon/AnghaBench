; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_handle_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_handle_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hifn_context = type { %struct.hifn_device* }
%struct.hifn_device = type { i64, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@HIFN_QUEUE_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @hifn_handle_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_handle_req(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.hifn_context*, align 8
  %4 = alloca %struct.hifn_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %7 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %8 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hifn_context* @crypto_tfm_ctx(i32 %10)
  store %struct.hifn_context* %11, %struct.hifn_context** %3, align 8
  %12 = load %struct.hifn_context*, %struct.hifn_context** %3, align 8
  %13 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %12, i32 0, i32 0
  %14 = load %struct.hifn_device*, %struct.hifn_device** %13, align 8
  store %struct.hifn_device* %14, %struct.hifn_device** %4, align 8
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %18 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %21 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i64 @DIV_ROUND_UP(i32 %22, i32 %23)
  %25 = add nsw i64 %19, %24
  %26 = load i64, i64* @HIFN_QUEUE_LENGTH, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %30 = call i32 @hifn_setup_session(%struct.ablkcipher_request* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %38 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %37, i32 0, i32 1
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %42 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %41, i32 0, i32 2
  %43 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %44 = call i32 @ablkcipher_enqueue_request(i32* %42, %struct.ablkcipher_request* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %46 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %45, i32 0, i32 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %36, %31
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.hifn_context* @crypto_tfm_ctx(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @hifn_setup_session(%struct.ablkcipher_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ablkcipher_enqueue_request(i32*, %struct.ablkcipher_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
