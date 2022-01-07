; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_grab_aead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_grab_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead_spawn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_alg = type { i32 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_grab_aead(%struct.crypto_aead_spawn* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead_spawn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_alg*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_aead_spawn* %0, %struct.crypto_aead_spawn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %13 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %22 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.crypto_alg* @crypto_lookup_aead(i8* %30, i32 %31, i32 %32)
  store %struct.crypto_alg* %33, %struct.crypto_alg** %10, align 8
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %35 = call i64 @IS_ERR(%struct.crypto_alg* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.crypto_alg* %38)
  store i32 %39, i32* %5, align 4
  br label %53

40:                                               ; preds = %4
  %41 = load %struct.crypto_aead_spawn*, %struct.crypto_aead_spawn** %6, align 8
  %42 = getelementptr inbounds %struct.crypto_aead_spawn, %struct.crypto_aead_spawn* %41, i32 0, i32 0
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %44 = load %struct.crypto_aead_spawn*, %struct.crypto_aead_spawn** %6, align 8
  %45 = getelementptr inbounds %struct.crypto_aead_spawn, %struct.crypto_aead_spawn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @crypto_init_spawn(%struct.TYPE_2__* %42, %struct.crypto_alg* %43, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %51 = call i32 @crypto_mod_put(%struct.crypto_alg* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %40, %37
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.crypto_alg* @crypto_lookup_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_init_spawn(%struct.TYPE_2__*, %struct.crypto_alg*, i32, i32) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
