; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ctr.c_crypto_rfc3686_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ctr.c_crypto_rfc3686_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.crypto_instance = type { i32 }
%struct.crypto_skcipher_spawn = type { i32 }
%struct.crypto_rfc3686_ctx = type { %struct.crypto_ablkcipher* }
%struct.crypto_ablkcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_rfc3686_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc3686_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_skcipher_spawn*, align 8
  %6 = alloca %struct.crypto_rfc3686_ctx*, align 8
  %7 = alloca %struct.crypto_ablkcipher*, align 8
  %8 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.crypto_instance*
  store %struct.crypto_instance* %13, %struct.crypto_instance** %4, align 8
  %14 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %15 = call %struct.crypto_skcipher_spawn* @crypto_instance_ctx(%struct.crypto_instance* %14)
  store %struct.crypto_skcipher_spawn* %15, %struct.crypto_skcipher_spawn** %5, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %17 = call %struct.crypto_rfc3686_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.crypto_rfc3686_ctx* %17, %struct.crypto_rfc3686_ctx** %6, align 8
  %18 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %5, align 8
  %19 = call %struct.crypto_ablkcipher* @crypto_spawn_skcipher(%struct.crypto_skcipher_spawn* %18)
  store %struct.crypto_ablkcipher* %19, %struct.crypto_ablkcipher** %7, align 8
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %21 = call i64 @IS_ERR(%struct.crypto_ablkcipher* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_ablkcipher* %24)
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %1
  %27 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %28 = load %struct.crypto_rfc3686_ctx*, %struct.crypto_rfc3686_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.crypto_rfc3686_ctx, %struct.crypto_rfc3686_ctx* %28, i32 0, i32 0
  store %struct.crypto_ablkcipher* %27, %struct.crypto_ablkcipher** %29, align 8
  %30 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %31 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %30)
  store i64 %31, i64* %8, align 8
  %32 = call i32 (...) @crypto_tfm_ctx_alignment()
  %33 = sub nsw i32 %32, 1
  %34 = xor i32 %33, -1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 4
  %40 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %41 = call i64 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher* %40)
  %42 = add i64 %39, %41
  %43 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %44 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %26, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.crypto_skcipher_spawn* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_rfc3686_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_spawn_skcipher(%struct.crypto_skcipher_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
