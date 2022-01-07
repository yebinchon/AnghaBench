; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.crypto_instance = type { i32 }
%struct.ccm_instance_ctx = type { i32, i32 }
%struct.crypto_ccm_ctx = type { %struct.crypto_cipher*, %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }
%struct.crypto_ablkcipher = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_ccm_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.ccm_instance_ctx*, align 8
  %6 = alloca %struct.crypto_ccm_ctx*, align 8
  %7 = alloca %struct.crypto_cipher*, align 8
  %8 = alloca %struct.crypto_ablkcipher*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %12 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.crypto_instance*
  store %struct.crypto_instance* %15, %struct.crypto_instance** %4, align 8
  %16 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %17 = call %struct.ccm_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance* %16)
  store %struct.ccm_instance_ctx* %17, %struct.ccm_instance_ctx** %5, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %19 = call %struct.crypto_ccm_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %18)
  store %struct.crypto_ccm_ctx* %19, %struct.crypto_ccm_ctx** %6, align 8
  %20 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %20, i32 0, i32 1
  %22 = call %struct.crypto_cipher* @crypto_spawn_cipher(i32* %21)
  store %struct.crypto_cipher* %22, %struct.crypto_cipher** %7, align 8
  %23 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %24 = call i64 @IS_ERR(%struct.crypto_cipher* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %28 = call i32 @PTR_ERR(%struct.crypto_cipher* %27)
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %1
  %30 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %30, i32 0, i32 0
  %32 = call %struct.crypto_cipher* @crypto_spawn_skcipher(i32* %31)
  %33 = bitcast %struct.crypto_cipher* %32 to %struct.crypto_ablkcipher*
  store %struct.crypto_ablkcipher* %33, %struct.crypto_ablkcipher** %8, align 8
  %34 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %35 = bitcast %struct.crypto_ablkcipher* %34 to %struct.crypto_cipher*
  %36 = call i32 @PTR_ERR(%struct.crypto_cipher* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %38 = bitcast %struct.crypto_ablkcipher* %37 to %struct.crypto_cipher*
  %39 = call i64 @IS_ERR(%struct.crypto_cipher* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %67

42:                                               ; preds = %29
  %43 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %44 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %44, i32 0, i32 1
  store %struct.crypto_cipher* %43, %struct.crypto_cipher** %45, align 8
  %46 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %47 = bitcast %struct.crypto_ablkcipher* %46 to %struct.crypto_cipher*
  %48 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %48, i32 0, i32 0
  store %struct.crypto_cipher* %47, %struct.crypto_cipher** %49, align 8
  %50 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %51 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %50)
  store i64 %51, i64* %9, align 8
  %52 = call i32 (...) @crypto_tfm_ctx_alignment()
  %53 = sub nsw i32 %52, 1
  %54 = xor i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %9, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 4
  %60 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %61 = bitcast %struct.crypto_ablkcipher* %60 to %struct.crypto_cipher*
  %62 = call i64 @crypto_ablkcipher_reqsize(%struct.crypto_cipher* %61)
  %63 = add i64 %59, %62
  %64 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %65 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %41
  %68 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %69 = call i32 @crypto_free_cipher(%struct.crypto_cipher* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %42, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ccm_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_cipher* @crypto_spawn_cipher(i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_cipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_cipher*) #1

declare dso_local %struct.crypto_cipher* @crypto_spawn_skcipher(i32*) #1

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @crypto_ablkcipher_reqsize(%struct.crypto_cipher*) #1

declare dso_local i32 @crypto_free_cipher(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
