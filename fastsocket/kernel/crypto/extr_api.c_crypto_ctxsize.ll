; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_ctxsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_ctxsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, i32, %struct.crypto_type* }
%struct.crypto_type = type { i32 (%struct.crypto_alg.0*, i32, i32)* }
%struct.crypto_alg.0 = type opaque

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*, i32, i32)* @crypto_ctxsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ctxsize(%struct.crypto_alg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_type*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %10, i32 0, i32 2
  %12 = load %struct.crypto_type*, %struct.crypto_type** %11, align 8
  store %struct.crypto_type* %12, %struct.crypto_type** %8, align 8
  %13 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (...) @crypto_tfm_ctx_alignment()
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %21 = icmp ne %struct.crypto_type* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %25 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %24, i32 0, i32 0
  %26 = load i32 (%struct.crypto_alg.0*, i32, i32)*, i32 (%struct.crypto_alg.0*, i32, i32)** %25, align 8
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %28 = bitcast %struct.crypto_alg* %27 to %struct.crypto_alg.0*
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 %26(%struct.crypto_alg.0* %28, i32 %29, i32 %30)
  %32 = add i32 %23, %31
  store i32 %32, i32* %4, align 4
  br label %53

33:                                               ; preds = %3
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %35 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %39 [
    i32 129, label %41
    i32 128, label %46
  ]

39:                                               ; preds = %33
  %40 = call i32 (...) @BUG()
  br label %41

41:                                               ; preds = %33, %39
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %43 = call i32 @crypto_cipher_ctxsize(%struct.crypto_alg* %42)
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %51

46:                                               ; preds = %33
  %47 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %48 = call i32 @crypto_compress_ctxsize(%struct.crypto_alg* %47)
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @crypto_cipher_ctxsize(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_compress_ctxsize(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
