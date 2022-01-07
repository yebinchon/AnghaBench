; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_final_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_final_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.shash_desc*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @shash_final_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_final_unaligned(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.shash_alg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %14 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %13, i32 0, i32 0
  %15 = load %struct.crypto_shash*, %struct.crypto_shash** %14, align 8
  store %struct.crypto_shash* %15, %struct.crypto_shash** %5, align 8
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %17 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %19 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %18)
  store %struct.shash_alg* %19, %struct.shash_alg** %7, align 8
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %21 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @shash_align_buffer_size(i32 %22, i64 %23)
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  %31 = call i32* @PTR_ALIGN(i32* %28, i64 %30)
  store i32* %31, i32** %11, align 8
  %32 = load %struct.shash_alg*, %struct.shash_alg** %7, align 8
  %33 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %32, i32 0, i32 0
  %34 = load i32 (%struct.shash_desc*, i32*)*, i32 (%struct.shash_desc*, i32*)** %33, align 8
  %35 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 %34(%struct.shash_desc* %35, i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %46

41:                                               ; preds = %2
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %40
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @memset(i32* %47, i32 0, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i32 %50
}

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @shash_align_buffer_size(i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
