; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.eseqiv_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @eseqiv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eseqiv_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.eseqiv_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %8 = call %struct.crypto_ablkcipher* @__crypto_ablkcipher_cast(%struct.crypto_tfm* %7)
  store %struct.crypto_ablkcipher* %8, %struct.crypto_ablkcipher** %3, align 8
  %9 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %10 = call %struct.eseqiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %9)
  store %struct.eseqiv_ctx* %10, %struct.eseqiv_ctx** %4, align 8
  %11 = load %struct.eseqiv_ctx*, %struct.eseqiv_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.eseqiv_ctx, %struct.eseqiv_ctx* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = call i32 (...) @crypto_tfm_ctx_alignment()
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  store i32 4, i32* %6, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = and i64 %17, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load i64, i64* %5, align 8
  %31 = xor i64 %30, -1
  store i64 %31, i64* %5, align 8
  %32 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %33 = call i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher* %32)
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %42 = call i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %41)
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (...) @crypto_tfm_ctx_alignment()
  %49 = call i32 @ALIGN(i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.eseqiv_ctx*, %struct.eseqiv_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.eseqiv_ctx, %struct.eseqiv_ctx* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %61 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %64 = call i32 @skcipher_geniv_init(%struct.crypto_tfm* %63)
  ret i32 %64
}

declare dso_local %struct.crypto_ablkcipher* @__crypto_ablkcipher_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.eseqiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skcipher_geniv_init(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
