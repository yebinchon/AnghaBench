; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_givcrypt_request = type { i32, i64, %struct.aead_request }
%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32, i32 }
%struct.talitos_edesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DESC_HDR_MODE0_ENCRYPT = common dso_local global i32 0, align 4
@ipsec_esp_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_givcrypt_request*)* @aead_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_givencrypt(%struct.aead_givcrypt_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_givcrypt_request*, align 8
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.talitos_ctx*, align 8
  %7 = alloca %struct.talitos_edesc*, align 8
  store %struct.aead_givcrypt_request* %0, %struct.aead_givcrypt_request** %3, align 8
  %8 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %9 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %8, i32 0, i32 2
  store %struct.aead_request* %9, %struct.aead_request** %4, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %5, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %13 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.talitos_ctx* %13, %struct.talitos_ctx** %6, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %15 = call %struct.talitos_edesc* @aead_edesc_alloc(%struct.aead_request* %14, i32 0)
  store %struct.talitos_edesc* %15, %struct.talitos_edesc** %7, align 8
  %16 = load %struct.talitos_edesc*, %struct.talitos_edesc** %7, align 8
  %17 = call i64 @IS_ERR(%struct.talitos_edesc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.talitos_edesc*, %struct.talitos_edesc** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.talitos_edesc* %20)
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.talitos_ctx*, %struct.talitos_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DESC_HDR_MODE0_ENCRYPT, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.talitos_edesc*, %struct.talitos_edesc** %7, align 8
  %29 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %32 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.talitos_ctx*, %struct.talitos_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %38 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %37)
  %39 = call i32 @memcpy(i64 %33, i32 %36, i32 %38)
  %40 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %41 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cpu_to_be64(i32 %42)
  %44 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %45 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.talitos_edesc*, %struct.talitos_edesc** %7, align 8
  %51 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %52 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %53 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %56 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ipsec_esp_encrypt_done, align 4
  %59 = call i32 @ipsec_esp(%struct.talitos_edesc* %50, %struct.aead_request* %51, i64 %54, i32 %57, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %22, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.talitos_edesc* @aead_edesc_alloc(%struct.aead_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ipsec_esp(%struct.talitos_edesc*, %struct.aead_request*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
