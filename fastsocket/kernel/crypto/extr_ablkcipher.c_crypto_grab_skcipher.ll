; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_grab_skcipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_grab_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher_spawn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_grab_skcipher(%struct.crypto_skcipher_spawn* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.crypto_alg* @crypto_lookup_skcipher(i8* %16, i32 %17, i32 %18)
  store %struct.crypto_alg* %19, %struct.crypto_alg** %10, align 8
  %20 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %21 = call i64 @IS_ERR(%struct.crypto_alg* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_alg* %24)
  store i32 %25, i32* %5, align 4
  br label %39

26:                                               ; preds = %4
  %27 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %6, align 8
  %28 = getelementptr inbounds %struct.crypto_skcipher_spawn, %struct.crypto_skcipher_spawn* %27, i32 0, i32 0
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %30 = load %struct.crypto_skcipher_spawn*, %struct.crypto_skcipher_spawn** %6, align 8
  %31 = getelementptr inbounds %struct.crypto_skcipher_spawn, %struct.crypto_skcipher_spawn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @crypto_init_spawn(%struct.TYPE_2__* %28, %struct.crypto_alg* %29, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %37 = call i32 @crypto_mod_put(%struct.crypto_alg* %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %26, %23
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @crypto_skcipher_type(i32) #1

declare dso_local i32 @crypto_skcipher_mask(i32) #1

declare dso_local %struct.crypto_alg* @crypto_lookup_skcipher(i8*, i32, i32) #1

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
