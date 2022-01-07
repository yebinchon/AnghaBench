; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_compat_digest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_compat_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32, i32 }
%struct.scatterlist = type { i32, i32 }
%struct.shash_desc = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32, i32*)* @shash_compat_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_compat_digest(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.hash_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.shash_desc**, align 8
  %12 = alloca %struct.shash_desc*, align 8
  %13 = alloca i8*, align 8
  store %struct.hash_desc* %0, %struct.hash_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %19 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = sub i32 %22, %23
  %25 = call i32 @min(i32 %20, i32 %24)
  %26 = icmp ult i32 %17, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %4
  %28 = load %struct.hash_desc*, %struct.hash_desc** %5, align 8
  %29 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.shash_desc** @crypto_hash_ctx(i32 %30)
  store %struct.shash_desc** %31, %struct.shash_desc*** %11, align 8
  %32 = load %struct.shash_desc**, %struct.shash_desc*** %11, align 8
  %33 = load %struct.shash_desc*, %struct.shash_desc** %32, align 8
  store %struct.shash_desc* %33, %struct.shash_desc** %12, align 8
  %34 = load %struct.hash_desc*, %struct.hash_desc** %5, align 8
  %35 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %38 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = call i32 @sg_page(%struct.scatterlist* %39)
  %41 = call i8* @crypto_kmap(i32 %40, i32 0)
  store i8* %41, i8** %13, align 8
  %42 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @crypto_shash_digest(%struct.shash_desc* %42, i8* %46, i32 %47, i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @crypto_kunmap(i8* %50, i32 0)
  %52 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %53 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @crypto_yield(i32 %54)
  br label %74

56:                                               ; preds = %4
  %57 = load %struct.hash_desc*, %struct.hash_desc** %5, align 8
  %58 = call i32 @shash_compat_init(%struct.hash_desc* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %74

62:                                               ; preds = %56
  %63 = load %struct.hash_desc*, %struct.hash_desc** %5, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @shash_compat_update(%struct.hash_desc* %63, %struct.scatterlist* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.hash_desc*, %struct.hash_desc** %5, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @shash_compat_final(%struct.hash_desc* %71, i32* %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %70, %69, %61, %27
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.shash_desc** @crypto_hash_ctx(i32) #1

declare dso_local i8* @crypto_kmap(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i8*, i32, i32*) #1

declare dso_local i32 @crypto_kunmap(i8*, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @shash_compat_init(%struct.hash_desc*) #1

declare dso_local i32 @shash_compat_update(%struct.hash_desc*, %struct.scatterlist*, i32) #1

declare dso_local i32 @shash_compat_final(%struct.hash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
