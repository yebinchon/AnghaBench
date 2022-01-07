; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_lookup_aead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_lookup_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@crypto_aead_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TESTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_alg* (i8*, i32, i32)* @crypto_lookup_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_alg* @crypto_lookup_aead(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %9, i32 %10, i32 %11)
  store %struct.crypto_alg* %12, %struct.crypto_alg** %8, align 8
  %13 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %14 = call i64 @IS_ERR(%struct.crypto_alg* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %17, %struct.crypto_alg** %4, align 8
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %20 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, @crypto_aead_type
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %24, %struct.crypto_alg** %4, align 8
  br label %89

25:                                               ; preds = %18
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %27 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %32, %struct.crypto_alg** %4, align 8
  br label %89

33:                                               ; preds = %25
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %35 = call i32 @crypto_mod_put(%struct.crypto_alg* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %36, i32 %39, i32 %43)
  store %struct.crypto_alg* %44, %struct.crypto_alg** %8, align 8
  %45 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %46 = call i64 @IS_ERR(%struct.crypto_alg* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %49, %struct.crypto_alg** %4, align 8
  br label %89

50:                                               ; preds = %33
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %52 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, @crypto_aead_type
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %57 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = xor i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = xor i32 %61, -1
  %63 = xor i32 %60, %62
  %64 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %69 = call i32 @crypto_mod_put(%struct.crypto_alg* %68)
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.crypto_alg* @ERR_PTR(i32 %71)
  store %struct.crypto_alg* %72, %struct.crypto_alg** %8, align 8
  br label %73

73:                                               ; preds = %67, %55
  %74 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %74, %struct.crypto_alg** %4, align 8
  br label %89

75:                                               ; preds = %50
  %76 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %77 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @crypto_nivaead_default(%struct.crypto_alg* %84, i32 %85, i32 %86)
  %88 = call %struct.crypto_alg* @ERR_PTR(i32 %87)
  store %struct.crypto_alg* %88, %struct.crypto_alg** %4, align 8
  br label %89

89:                                               ; preds = %75, %73, %48, %31, %23, %16
  %90 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  ret %struct.crypto_alg* %90
}

declare dso_local %struct.crypto_alg* @crypto_alg_mod_lookup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypto_nivaead_default(%struct.crypto_alg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
