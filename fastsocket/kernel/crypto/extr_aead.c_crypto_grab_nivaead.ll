; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_grab_nivaead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_grab_nivaead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead_spawn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_alg = type { i32 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead_spawn*, i8*, i32, i32)* @crypto_grab_nivaead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_grab_nivaead(%struct.crypto_aead_spawn* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %26, i32 %27, i32 %28)
  store %struct.crypto_alg* %29, %struct.crypto_alg** %10, align 8
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %31 = call i64 @IS_ERR(%struct.crypto_alg* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.crypto_alg* %34)
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %4
  %37 = load %struct.crypto_aead_spawn*, %struct.crypto_aead_spawn** %6, align 8
  %38 = getelementptr inbounds %struct.crypto_aead_spawn, %struct.crypto_aead_spawn* %37, i32 0, i32 0
  %39 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %40 = load %struct.crypto_aead_spawn*, %struct.crypto_aead_spawn** %6, align 8
  %41 = getelementptr inbounds %struct.crypto_aead_spawn, %struct.crypto_aead_spawn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @crypto_init_spawn(%struct.TYPE_2__* %38, %struct.crypto_alg* %39, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %47 = call i32 @crypto_mod_put(%struct.crypto_alg* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %36, %33
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.crypto_alg* @crypto_alg_mod_lookup(i8*, i32, i32) #1

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
