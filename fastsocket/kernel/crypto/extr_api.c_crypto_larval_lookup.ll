; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@CRYPTO_ALG_LARVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-all\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_alg* @crypto_larval_lookup(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.crypto_alg* @ERR_PTR(i32 %13)
  store %struct.crypto_alg* %14, %struct.crypto_alg** %4, align 8
  br label %69

15:                                               ; preds = %3
  %16 = load i32, i32* @CRYPTO_ALG_LARVAL, align 4
  %17 = load i32, i32* @CRYPTO_ALG_DEAD, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.crypto_alg* @crypto_alg_lookup(i8* %25, i32 %26, i32 %27)
  store %struct.crypto_alg* %28, %struct.crypto_alg** %8, align 8
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %30 = icmp ne %struct.crypto_alg* %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %15
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %36 = xor i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @request_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.crypto_alg* @crypto_alg_lookup(i8* %46, i32 %47, i32 %48)
  store %struct.crypto_alg* %49, %struct.crypto_alg** %8, align 8
  br label %50

50:                                               ; preds = %45, %15
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %52 = icmp ne %struct.crypto_alg* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %55 = call i64 @crypto_is_larval(%struct.crypto_alg* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %59 = call %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg* %58)
  br label %62

60:                                               ; preds = %53
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi %struct.crypto_alg* [ %59, %57 ], [ %61, %60 ]
  store %struct.crypto_alg* %63, %struct.crypto_alg** %4, align 8
  br label %69

64:                                               ; preds = %50
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.crypto_alg* @crypto_larval_add(i8* %65, i32 %66, i32 %67)
  store %struct.crypto_alg* %68, %struct.crypto_alg** %4, align 8
  br label %69

69:                                               ; preds = %64, %62, %11
  %70 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  ret %struct.crypto_alg* %70
}

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_alg* @crypto_alg_lookup(i8*, i32, i32) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i64 @crypto_is_larval(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @crypto_larval_add(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
