; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_alloc_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_alloc_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_alg = type opaque

@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_tfm* @crypto_alloc_base(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.crypto_tfm* @crypto_alg_mod_lookup(i8* %12, i32 %13, i32 %14)
  %16 = bitcast %struct.crypto_tfm* %15 to %struct.crypto_alg*
  store %struct.crypto_alg* %16, %struct.crypto_alg** %10, align 8
  %17 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %18 = bitcast %struct.crypto_alg* %17 to %struct.crypto_tfm*
  %19 = call i64 @IS_ERR(%struct.crypto_tfm* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %23 = bitcast %struct.crypto_alg* %22 to %struct.crypto_tfm*
  %24 = call i32 @PTR_ERR(%struct.crypto_tfm* %23)
  store i32 %24, i32* %9, align 4
  br label %42

25:                                               ; preds = %11
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %27 = bitcast %struct.crypto_alg* %26 to %struct.crypto_tfm*
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_tfm* %27, i32 %28, i32 %29)
  store %struct.crypto_tfm* %30, %struct.crypto_tfm** %8, align 8
  %31 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %32 = call i64 @IS_ERR(%struct.crypto_tfm* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  store %struct.crypto_tfm* %35, %struct.crypto_tfm** %4, align 8
  br label %59

36:                                               ; preds = %25
  %37 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %38 = bitcast %struct.crypto_alg* %37 to %struct.crypto_tfm*
  %39 = call i32 @crypto_mod_put(%struct.crypto_tfm* %38)
  %40 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.crypto_tfm* %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %21
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %56

48:                                               ; preds = %42
  %49 = load i32, i32* @current, align 4
  %50 = call i64 @signal_pending(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EINTR, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %56

55:                                               ; preds = %48
  br label %11

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.crypto_tfm* @ERR_PTR(i32 %57)
  store %struct.crypto_tfm* %58, %struct.crypto_tfm** %4, align 8
  br label %59

59:                                               ; preds = %56, %34
  %60 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  ret %struct.crypto_tfm* %60
}

declare dso_local %struct.crypto_tfm* @crypto_alg_mod_lookup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_tfm*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_tfm*, i32, i32) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_tfm*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local %struct.crypto_tfm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
