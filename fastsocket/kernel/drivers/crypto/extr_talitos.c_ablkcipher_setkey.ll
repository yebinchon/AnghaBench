; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_ablkcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_ablkcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.talitos_ctx = type { i32, i32 }
%struct.ablkcipher_alg = type { i32, i32 }

@TALITOS_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @ablkcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.talitos_ctx*, align 8
  %9 = alloca %struct.ablkcipher_alg*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.talitos_ctx* %11, %struct.talitos_ctx** %8, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %13 = call %struct.ablkcipher_alg* @crypto_ablkcipher_alg(%struct.crypto_ablkcipher* %12)
  store %struct.ablkcipher_alg* %13, %struct.ablkcipher_alg** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @TALITOS_MAX_KEY_SIZE, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %9, align 8
  %21 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %9, align 8
  %27 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  br label %40

31:                                               ; preds = %24
  %32 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %32, i32 0, i32 1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @memcpy(i32* %33, i32* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %46

40:                                               ; preds = %30, %17
  %41 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %42 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %43 = call i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher* %41, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablkcipher_alg* @crypto_ablkcipher_alg(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_ablkcipher_set_flags(%struct.crypto_ablkcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
