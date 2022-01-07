; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm_aes_nx_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm_aes_nx_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.blkcipher_desc = type { i32, %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @ccm_aes_nx_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_aes_nx_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.blkcipher_desc, align 8
  %5 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %7 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.crypto_blkcipher*
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %4, i32 0, i32 1
  store %struct.crypto_blkcipher* %14, %struct.crypto_blkcipher** %15, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @crypto_ccm_check_iv(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %25 = call i32 @ccm_nx_encrypt(%struct.aead_request* %24, %struct.blkcipher_desc* %4)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @crypto_ccm_check_iv(i32) #1

declare dso_local i32 @ccm_nx_encrypt(%struct.aead_request*, %struct.blkcipher_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
