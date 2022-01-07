; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_ahash_digest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_ahash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.shash_desc = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shash_ahash_digest(%struct.ahash_request* %0, %struct.shash_desc* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store %struct.shash_desc* %1, %struct.shash_desc** %4, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %10, i32 0, i32 2
  %12 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %12, %struct.scatterlist** %5, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %14 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %24, %25
  %27 = call i32 @min(i32 %22, i32 %26)
  %28 = icmp ult i32 %19, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %2
  %30 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %31 = call i32 @sg_page(%struct.scatterlist* %30)
  %32 = call i8* @crypto_kmap(i32 %31, i32 0)
  store i8* %32, i8** %9, align 8
  %33 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %40 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @crypto_shash_digest(%struct.shash_desc* %33, i8* %37, i32 %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @crypto_kunmap(i8* %43, i32 0)
  %45 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %46 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @crypto_yield(i32 %47)
  br label %62

49:                                               ; preds = %2
  %50 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %51 = call i64 @crypto_shash_init(%struct.shash_desc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %59

54:                                               ; preds = %49
  %55 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %56 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %57 = call i32 @shash_ahash_finup(%struct.ahash_request* %55, %struct.shash_desc* %56)
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %54, %53
  %60 = phi i64 [ %51, %53 ], [ %58, %54 ]
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %29
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @crypto_kmap(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i8*, i32, i32) #1

declare dso_local i32 @crypto_kunmap(i8*, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i64 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @shash_ahash_finup(%struct.ahash_request*, %struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
