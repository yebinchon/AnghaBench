; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_aead_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_aead_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }
%struct.crypto_aead = type { i32 }
%struct.cryptd_aead_request_ctx = type { i32 (%struct.TYPE_2__*, i32)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.crypto_aead*, i32, i32 (%struct.aead_request*)*)* @cryptd_aead_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryptd_aead_crypt(%struct.aead_request* %0, %struct.crypto_aead* %1, i32 %2, i32 (%struct.aead_request*)* %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.aead_request*)*, align 8
  %9 = alloca %struct.cryptd_aead_request_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store %struct.crypto_aead* %1, %struct.crypto_aead** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.aead_request*)* %3, i32 (%struct.aead_request*)** %8, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %11 = call %struct.cryptd_aead_request_ctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.cryptd_aead_request_ctx* %11, %struct.cryptd_aead_request_ctx** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @EINPROGRESS, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %23 = call i32 @aead_request_set_tfm(%struct.aead_request* %21, %struct.crypto_aead* %22)
  %24 = load i32 (%struct.aead_request*)*, i32 (%struct.aead_request*)** %8, align 8
  %25 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %26 = call i32 %24(%struct.aead_request* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.cryptd_aead_request_ctx*, %struct.cryptd_aead_request_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.cryptd_aead_request_ctx, %struct.cryptd_aead_request_ctx* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %28, align 8
  %30 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %31 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 (%struct.TYPE_2__*, i32)* %29, i32 (%struct.TYPE_2__*, i32)** %32, align 8
  br label %33

33:                                               ; preds = %20, %19
  %34 = call i32 (...) @local_bh_disable()
  %35 = load %struct.cryptd_aead_request_ctx*, %struct.cryptd_aead_request_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.cryptd_aead_request_ctx, %struct.cryptd_aead_request_ctx* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %36, align 8
  %38 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 %37(%struct.TYPE_2__* %39, i32 %40)
  %42 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local %struct.cryptd_aead_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, %struct.crypto_aead*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
