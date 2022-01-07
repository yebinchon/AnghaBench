; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_xcbc_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_xcbc_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.nx_crypto_ctx = type { %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NX_PROPS_AES_128 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @nx_xcbc_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_xcbc_set_key(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nx_crypto_ctx*, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %10 = call %struct.nx_crypto_ctx* @crypto_shash_ctx(%struct.crypto_shash* %9)
  store %struct.nx_crypto_ctx* %10, %struct.nx_crypto_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %20 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @NX_PROPS_AES_128, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %12
  %24 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @memcpy(i32 %28, i32* %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.nx_crypto_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
