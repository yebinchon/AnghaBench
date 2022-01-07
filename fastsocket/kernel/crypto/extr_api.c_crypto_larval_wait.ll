; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }
%struct.crypto_larval = type { i32, %struct.crypto_alg*, i32 }

@HZ = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CRYPTO_ALG_TESTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_alg* (%struct.crypto_alg*)* @crypto_larval_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg* %0) #0 {
  %2 = alloca %struct.crypto_alg*, align 8
  %3 = alloca %struct.crypto_larval*, align 8
  %4 = alloca i64, align 8
  store %struct.crypto_alg* %0, %struct.crypto_alg** %2, align 8
  %5 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  %6 = bitcast %struct.crypto_alg* %5 to i8*
  %7 = bitcast i8* %6 to %struct.crypto_larval*
  store %struct.crypto_larval* %7, %struct.crypto_larval** %3, align 8
  %8 = load %struct.crypto_larval*, %struct.crypto_larval** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %8, i32 0, i32 2
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 60, %10
  %12 = call i64 @wait_for_completion_interruptible_timeout(i32* %9, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.crypto_larval*, %struct.crypto_larval** %3, align 8
  %14 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %13, i32 0, i32 1
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %14, align 8
  store %struct.crypto_alg* %15, %struct.crypto_alg** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @EINTR, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.crypto_alg* @ERR_PTR(i32 %20)
  store %struct.crypto_alg* %21, %struct.crypto_alg** %2, align 8
  br label %63

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.crypto_alg* @ERR_PTR(i32 %27)
  store %struct.crypto_alg* %28, %struct.crypto_alg** %2, align 8
  br label %62

29:                                               ; preds = %22
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  %31 = icmp ne %struct.crypto_alg* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.crypto_alg* @ERR_PTR(i32 %34)
  store %struct.crypto_alg* %35, %struct.crypto_alg** %2, align 8
  br label %61

36:                                               ; preds = %29
  %37 = load %struct.crypto_larval*, %struct.crypto_larval** %3, align 8
  %38 = call i64 @crypto_is_test_larval(%struct.crypto_larval* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  %42 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.crypto_alg* @ERR_PTR(i32 %49)
  store %struct.crypto_alg* %50, %struct.crypto_alg** %2, align 8
  br label %60

51:                                               ; preds = %40, %36
  %52 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  %53 = call i32 @crypto_mod_get(%struct.crypto_alg* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.crypto_alg* @ERR_PTR(i32 %57)
  store %struct.crypto_alg* %58, %struct.crypto_alg** %2, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %32
  br label %62

62:                                               ; preds = %61, %25
  br label %63

63:                                               ; preds = %62, %18
  %64 = load %struct.crypto_larval*, %struct.crypto_larval** %3, align 8
  %65 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %64, i32 0, i32 0
  %66 = call i32 @crypto_mod_put(i32* %65)
  %67 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  ret %struct.crypto_alg* %67
}

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

declare dso_local i64 @crypto_is_test_larval(%struct.crypto_larval*) #1

declare dso_local i32 @crypto_mod_get(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_mod_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
