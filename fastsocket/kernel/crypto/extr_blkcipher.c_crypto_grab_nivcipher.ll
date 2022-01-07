; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_grab_nivcipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_grab_nivcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher_spawn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_alg = type { i32 }

@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher_spawn*, i8*, i32, i32)* @crypto_grab_nivcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_grab_nivcipher(%struct.crypto_skcipher_spawn* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher_spawn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_alg*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_skcipher_spawn* %0, %struct.crypto_skcipher_spawn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @crypto_skcipher_type(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @crypto_skcipher_mask(i32 %14)
  %16 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %18, i32 %19, i32 %20)
  store %struct.crypto_alg* %21, %struct.crypto_alg** %10, align 8
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %23 = call i64 @IS_ERR(%struct.crypto_alg* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.crypto_alg* %26)
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %4
  %29 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %6, align 8
  %30 = getelementptr inbounds %struct.crypto_skcipher_spawn, %struct.crypto_skcipher_spawn* %29, i32 0, i32 0
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %32 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %6, align 8
  %33 = getelementptr inbounds %struct.crypto_skcipher_spawn, %struct.crypto_skcipher_spawn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @crypto_init_spawn(%struct.TYPE_2__* %30, %struct.crypto_alg* %31, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %39 = call i32 @crypto_mod_put(%struct.crypto_alg* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @crypto_skcipher_type(i32) #1

declare dso_local i32 @crypto_skcipher_mask(i32) #1

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
