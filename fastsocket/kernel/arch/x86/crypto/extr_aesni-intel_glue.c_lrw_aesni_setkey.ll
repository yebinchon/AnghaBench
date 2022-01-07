; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_aesni-intel_glue.c_lrw_aesni_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_aesni-intel_glue.c_lrw_aesni_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.aesni_lrw_ctx = type { i32, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @lrw_aesni_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrw_aesni_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aesni_lrw_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.aesni_lrw_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.aesni_lrw_ctx* %11, %struct.aesni_lrw_ctx** %8, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %13 = load %struct.aesni_lrw_ctx*, %struct.aesni_lrw_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.aesni_lrw_ctx, %struct.aesni_lrw_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %19 = sub i32 %17, %18
  %20 = call i32 @aes_set_key_common(%struct.crypto_tfm* %12, i32 %15, i32* %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.aesni_lrw_ctx*, %struct.aesni_lrw_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.aesni_lrw_ctx, %struct.aesni_lrw_ctx* %26, i32 0, i32 0
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = call i32 @lrw_init_table(i32* %27, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %25, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.aesni_lrw_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @aes_set_key_common(%struct.crypto_tfm*, i32, i32*, i32) #1

declare dso_local i32 @lrw_init_table(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
