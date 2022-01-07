; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_givencrypt_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_givencrypt_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_givcrypt_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.seqiv_ctx = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@crypto_default_rng = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_givcrypt_request*)* @seqiv_aead_givencrypt_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqiv_aead_givencrypt_first(%struct.aead_givcrypt_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_givcrypt_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.seqiv_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.aead_givcrypt_request* %0, %struct.aead_givcrypt_request** %3, align 8
  %7 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %8 = call %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request* %7)
  store %struct.crypto_aead* %8, %struct.crypto_aead** %4, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %10 = call %struct.seqiv_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.seqiv_ctx* %10, %struct.seqiv_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.seqiv_ctx*, %struct.seqiv_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.seqiv_ctx, %struct.seqiv_ctx* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %15 = call %struct.TYPE_2__* @crypto_aead_crt(%struct.crypto_aead* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32 (%struct.aead_givcrypt_request*)*
  %19 = icmp ne i32 (%struct.aead_givcrypt_request*)* %18, @seqiv_aead_givencrypt_first
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %23 = call %struct.TYPE_2__* @crypto_aead_crt(%struct.crypto_aead* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 ptrtoint (i32 (%struct.aead_givcrypt_request*)* @seqiv_aead_givencrypt to i64), i64* %24, align 8
  %25 = load i32, i32* @crypto_default_rng, align 4
  %26 = load %struct.seqiv_ctx*, %struct.seqiv_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.seqiv_ctx, %struct.seqiv_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %30 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %29)
  %31 = call i32 @crypto_rng_get_bytes(i32 %25, i32 %28, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load %struct.seqiv_ctx*, %struct.seqiv_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.seqiv_ctx, %struct.seqiv_ctx* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %42 = call i32 @seqiv_aead_givencrypt(%struct.aead_givcrypt_request* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request*) #1

declare dso_local %struct.seqiv_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.TYPE_2__* @crypto_aead_crt(%struct.crypto_aead*) #1

declare dso_local i32 @seqiv_aead_givencrypt(%struct.aead_givcrypt_request*) #1

declare dso_local i32 @crypto_rng_get_bytes(i32, i32, i32) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
