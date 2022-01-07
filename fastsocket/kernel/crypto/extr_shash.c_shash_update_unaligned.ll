; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_update_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_update_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.shash_desc*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @shash_update_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_update_unaligned(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_shash*, align 8
  %8 = alloca %struct.shash_alg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %16 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %15, i32 0, i32 0
  %17 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  store %struct.crypto_shash* %17, %struct.crypto_shash** %7, align 8
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %19 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %18)
  store %struct.shash_alg* %19, %struct.shash_alg** %8, align 8
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %21 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %22, 1
  %24 = load i32*, i32** %5, align 8
  %25 = ptrtoint i32* %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = and i64 %25, %26
  %28 = sub i64 %23, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @shash_align_buffer_size(i32 %30, i64 %31)
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  %39 = call i32* @PTR_ALIGN(i32* %36, i64 %38)
  store i32* %39, i32** %13, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %3
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %51 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %50, i32 0, i32 0
  %52 = load i32 (%struct.shash_desc*, i32*, i32)*, i32 (%struct.shash_desc*, i32*, i32)** %51, align 8
  %53 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 %52(%struct.shash_desc* %53, i32* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memset(i32* %57, i32 0, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %76

63:                                               ; preds = %45
  %64 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %65 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %64, i32 0, i32 0
  %66 = load i32 (%struct.shash_desc*, i32*, i32)*, i32 (%struct.shash_desc*, i32*, i32)** %65, align 8
  %67 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub i32 %72, %73
  %75 = call i32 %66(%struct.shash_desc* %67, i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %63, %62
  %77 = phi i32 [ %60, %62 ], [ %75, %63 ]
  %78 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 %77
}

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

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
