; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_rfc4309_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_rfc4309_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_rfc4309_ctx = type { i32, %struct.crypto_aead* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aead_request* (%struct.aead_request*)* @crypto_rfc4309_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aead_request* @crypto_rfc4309_crypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_rfc4309_ctx*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %9 = call %struct.aead_request* @aead_request_ctx(%struct.aead_request* %8)
  store %struct.aead_request* %9, %struct.aead_request** %3, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %4, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %13 = call %struct.crypto_rfc4309_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.crypto_rfc4309_ctx* %13, %struct.crypto_rfc4309_ctx** %5, align 8
  %14 = load %struct.crypto_rfc4309_ctx*, %struct.crypto_rfc4309_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_rfc4309_ctx, %struct.crypto_rfc4309_ctx* %14, i32 0, i32 1
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %15, align 8
  store %struct.crypto_aead* %16, %struct.crypto_aead** %6, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i64 1
  %19 = bitcast %struct.aead_request* %18 to i32*
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %21 = call i32 @crypto_aead_reqsize(%struct.crypto_aead* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %25 = call i64 @crypto_aead_alignmask(%struct.crypto_aead* %24)
  %26 = add nsw i64 %25, 1
  %27 = call i32* @PTR_ALIGN(i32* %23, i64 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 3, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load %struct.crypto_rfc4309_ctx*, %struct.crypto_rfc4309_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.crypto_rfc4309_ctx, %struct.crypto_rfc4309_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memcpy(i32* %31, i32 %34, i32 3)
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32* %37, i32 %40, i32 8)
  %42 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %43 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %44 = call i32 @aead_request_set_tfm(%struct.aead_request* %42, %struct.crypto_aead* %43)
  %45 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %46 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @aead_request_set_callback(%struct.aead_request* %45, i32 %49, i32 %53, i32 %57)
  %59 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %60 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %61 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %64 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %67 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @aead_request_set_crypt(%struct.aead_request* %59, i32 %62, i32 %65, i32 %68, i32* %69)
  %71 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %72 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %76 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @aead_request_set_assoc(%struct.aead_request* %71, i32 %74, i32 %77)
  %79 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  ret %struct.aead_request* %79
}

declare dso_local %struct.aead_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_rfc4309_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @crypto_aead_reqsize(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, %struct.crypto_aead*) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i32, i32*) #1

declare dso_local i32 @aead_request_set_assoc(%struct.aead_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
