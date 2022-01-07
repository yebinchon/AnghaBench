; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_givcrypt_request = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.crypto_aead = type { i32 }
%struct.ixp_ctx = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_givcrypt_request*)* @aead_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_givencrypt(%struct.aead_givcrypt_request* %0) #0 {
  %2 = alloca %struct.aead_givcrypt_request*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.ixp_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aead_givcrypt_request* %0, %struct.aead_givcrypt_request** %2, align 8
  %8 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %9 = call %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request* %8)
  store %struct.crypto_aead* %9, %struct.crypto_aead** %3, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %11 = call %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %10)
  store %struct.ixp_ctx* %11, %struct.ixp_ctx** %4, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %13 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @get_random_bytes(i32* %21, i32 %22)
  %24 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %28 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memcpy(i64 %30, i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp ugt i64 %38, 4
  br i1 %39, label %40, label %49

40:                                               ; preds = %26
  %41 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %42 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = sub i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32 %43, i32 0, i32 %47)
  store i32 4, i32* %5, align 4
  br label %49

49:                                               ; preds = %40, %26
  %50 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %51 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cpu_to_be64(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %55 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = sub i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @memcpy(i64 %61, i32* %7, i32 %62)
  %64 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %65 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %64, i32 0, i32 1
  %66 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %67 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %71 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %2, align 8
  %78 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @aead_perform(%struct.TYPE_2__* %65, i32 1, i32 %69, i64 %76, i32 %79)
  ret i32 %80
}

declare dso_local %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @aead_perform(%struct.TYPE_2__*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
