; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_destroy_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_destroy_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.crypto_alg* }
%struct.crypto_alg = type { i32 (%struct.crypto_tfm*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_destroy_tfm(i8* %0, %struct.crypto_tfm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.crypto_tfm* %1, %struct.crypto_tfm** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %14, i32 0, i32 1
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %15, align 8
  store %struct.crypto_alg* %16, %struct.crypto_alg** %5, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %18 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %13
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %23 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %22, i32 0, i32 0
  %24 = load i32 (%struct.crypto_tfm*)*, i32 (%struct.crypto_tfm*)** %23, align 8
  %25 = icmp ne i32 (%struct.crypto_tfm*)* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %28 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %27, i32 0, i32 0
  %29 = load i32 (%struct.crypto_tfm*)*, i32 (%struct.crypto_tfm*)** %28, align 8
  %30 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %31 = call i32 %29(%struct.crypto_tfm* %30)
  br label %32

32:                                               ; preds = %26, %21, %13
  %33 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %34 = call i32 @crypto_exit_ops(%struct.crypto_tfm* %33)
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %36 = call i32 @crypto_mod_put(%struct.crypto_alg* %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @kzfree(i8* %37)
  br label %39

39:                                               ; preds = %32, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_exit_ops(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @kzfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
