; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, i64 }
%struct.crypto_cipher = type { i32 }
%struct.crypto_instance = type { i32 }
%struct.crypto_spawn = type { i32 }
%struct.priv = type { %struct.crypto_cipher* }

@LRW_BLOCK_SIZE = common dso_local global i64 0, align 8
@CRYPTO_TFM_RES_BAD_BLOCK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_cipher*, align 8
  %5 = alloca %struct.crypto_instance*, align 8
  %6 = alloca %struct.crypto_spawn*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.crypto_instance*
  store %struct.crypto_instance* %13, %struct.crypto_instance** %5, align 8
  %14 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %15 = call %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance* %14)
  store %struct.crypto_spawn* %15, %struct.crypto_spawn** %6, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %17 = call %struct.priv* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.priv* %17, %struct.priv** %7, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %19 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %18, i32 0, i32 0
  store i32* %19, i32** %8, align 8
  %20 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %21 = call %struct.crypto_cipher* @crypto_spawn_cipher(%struct.crypto_spawn* %20)
  store %struct.crypto_cipher* %21, %struct.crypto_cipher** %4, align 8
  %22 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %23 = call i64 @IS_ERR(%struct.crypto_cipher* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %27 = call i32 @PTR_ERR(%struct.crypto_cipher* %26)
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %30 = call i64 @crypto_cipher_blocksize(%struct.crypto_cipher* %29)
  %31 = load i64, i64* @LRW_BLOCK_SIZE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @CRYPTO_TFM_RES_BAD_BLOCK_LEN, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %42 = load %struct.priv*, %struct.priv** %7, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  store %struct.crypto_cipher* %41, %struct.crypto_cipher** %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %33, %25
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local %struct.priv* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_cipher* @crypto_spawn_cipher(%struct.crypto_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_cipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_cipher*) #1

declare dso_local i64 @crypto_cipher_blocksize(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
