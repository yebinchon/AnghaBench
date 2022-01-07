; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nx_crypto_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @gcm_aes_nx_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_aes_nx_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.nx_crypto_ctx*, align 8
  %4 = alloca i8*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %5 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %6 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32 %8)
  store %struct.nx_crypto_ctx* %9, %struct.nx_crypto_ctx** %3, align 8
  %10 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %17 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i8* %15, i32 %18, i32 12)
  %20 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %21 = call i32 @gcm_aes_nx_crypt(%struct.aead_request* %20, i32 1)
  ret i32 %21
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @gcm_aes_nx_crypt(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
