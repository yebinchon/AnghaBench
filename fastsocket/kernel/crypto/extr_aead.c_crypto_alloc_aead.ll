; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_alloc_aead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_alloc_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.crypto_alg = type opaque

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_aead* @crypto_alloc_aead(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %12 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %21 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %74, %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.crypto_tfm* @crypto_lookup_aead(i8* %30, i32 %31, i32 %32)
  %34 = bitcast %struct.crypto_tfm* %33 to %struct.crypto_alg*
  store %struct.crypto_alg* %34, %struct.crypto_alg** %10, align 8
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %36 = bitcast %struct.crypto_alg* %35 to %struct.crypto_tfm*
  %37 = call i64 @IS_ERR(%struct.crypto_tfm* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %41 = bitcast %struct.crypto_alg* %40 to %struct.crypto_tfm*
  %42 = call i32 @PTR_ERR(%struct.crypto_tfm* %41)
  store i32 %42, i32* %9, align 4
  br label %61

43:                                               ; preds = %29
  %44 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %45 = bitcast %struct.crypto_alg* %44 to %struct.crypto_tfm*
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_tfm* %45, i32 %46, i32 %47)
  store %struct.crypto_tfm* %48, %struct.crypto_tfm** %8, align 8
  %49 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %50 = call i64 @IS_ERR(%struct.crypto_tfm* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %54 = call %struct.crypto_aead* @__crypto_aead_cast(%struct.crypto_tfm* %53)
  store %struct.crypto_aead* %54, %struct.crypto_aead** %4, align 8
  br label %78

55:                                               ; preds = %43
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %57 = bitcast %struct.crypto_alg* %56 to %struct.crypto_tfm*
  %58 = call i32 @crypto_mod_put(%struct.crypto_tfm* %57)
  %59 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %60 = call i32 @PTR_ERR(%struct.crypto_tfm* %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %55, %39
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61
  %68 = load i32, i32* @current, align 4
  %69 = call i64 @signal_pending(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EINTR, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %75

74:                                               ; preds = %67
  br label %29

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %9, align 4
  %77 = call %struct.crypto_aead* @ERR_PTR(i32 %76)
  store %struct.crypto_aead* %77, %struct.crypto_aead** %4, align 8
  br label %78

78:                                               ; preds = %75, %52
  %79 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  ret %struct.crypto_aead* %79
}

declare dso_local %struct.crypto_tfm* @crypto_lookup_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_tfm*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_tfm*, i32, i32) #1

declare dso_local %struct.crypto_aead* @__crypto_aead_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_tfm*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local %struct.crypto_aead* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
