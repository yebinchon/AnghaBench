; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_alloc_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_alloc_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_type = type { i32 }
%struct.crypto_alg = type opaque

@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @crypto_alloc_tfm(i8* %0, %struct.crypto_type* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crypto_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.crypto_type* %1, %struct.crypto_type** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %57, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.crypto_type*, %struct.crypto_type** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @crypto_find_alg(i8* %14, %struct.crypto_type* %15, i32 %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.crypto_alg*
  store %struct.crypto_alg* %19, %struct.crypto_alg** %12, align 8
  %20 = load %struct.crypto_alg*, %struct.crypto_alg** %12, align 8
  %21 = bitcast %struct.crypto_alg* %20 to i8*
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %12, align 8
  %26 = bitcast %struct.crypto_alg* %25 to i8*
  %27 = call i32 @PTR_ERR(i8* %26)
  store i32 %27, i32* %11, align 4
  br label %44

28:                                               ; preds = %13
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %12, align 8
  %30 = bitcast %struct.crypto_alg* %29 to i8*
  %31 = load %struct.crypto_type*, %struct.crypto_type** %7, align 8
  %32 = call i8* @crypto_create_tfm(i8* %30, %struct.crypto_type* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %5, align 8
  br label %61

38:                                               ; preds = %28
  %39 = load %struct.crypto_alg*, %struct.crypto_alg** %12, align 8
  %40 = bitcast %struct.crypto_alg* %39 to i8*
  %41 = call i32 @crypto_mod_put(i8* %40)
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %24
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %58

50:                                               ; preds = %44
  %51 = load i32, i32* @current, align 4
  %52 = call i64 @signal_pending(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINTR, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %58

57:                                               ; preds = %50
  br label %13

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %11, align 4
  %60 = call i8* @ERR_PTR(i32 %59)
  store i8* %60, i8** %5, align 8
  br label %61

61:                                               ; preds = %58, %36
  %62 = load i8*, i8** %5, align 8
  ret i8* %62
}

declare dso_local i8* @crypto_find_alg(i8*, %struct.crypto_type*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @crypto_create_tfm(i8*, %struct.crypto_type*) #1

declare dso_local i32 @crypto_mod_put(i8*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
