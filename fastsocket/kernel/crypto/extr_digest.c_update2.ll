; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_update2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_update2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32, i32 }
%struct.scatterlist = type { i32, i32 }
%struct.crypto_tfm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.crypto_tfm*, i8*, i32)* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32)* @update2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update2(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.hash_desc* %0, %struct.hash_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.hash_desc*, %struct.hash_desc** %5, align 8
  %18 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.crypto_tfm* @crypto_hash_tfm(i32 %19)
  store %struct.crypto_tfm* %20, %struct.crypto_tfm** %8, align 8
  %21 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %22 = call i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %125, %26
  %28 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %29 = call %struct.page* @sg_page(%struct.scatterlist* %28)
  store %struct.page* %29, %struct.page** %10, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ugt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %118, %44
  %49 = load i32, i32* %12, align 4
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %11, align 4
  %53 = sub i32 %51, %52
  %54 = call i32 @min(i32 %49, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.page*, %struct.page** %10, align 8
  %56 = call i8* @crypto_kmap(%struct.page* %55, i32 0)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %15, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %61, %62
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %48
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %69, %70
  %72 = sub i32 %68, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @min(i32 %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %77 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32 (%struct.crypto_tfm*, i8*, i32)*, i32 (%struct.crypto_tfm*, i8*, i32)** %80, align 8
  %82 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 %81(%struct.crypto_tfm* %82, i8* %83, i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %15, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %66, %48
  %97 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %98 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32 (%struct.crypto_tfm*, i8*, i32)*, i32 (%struct.crypto_tfm*, i8*, i32)** %101, align 8
  %103 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 %102(%struct.crypto_tfm* %103, i8* %104, i32 %105)
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @crypto_kunmap(i8* %107, i32 0)
  %109 = load %struct.hash_desc*, %struct.hash_desc** %5, align 8
  %110 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @crypto_yield(i32 %111)
  store i32 0, i32* %11, align 4
  %113 = load %struct.page*, %struct.page** %10, align 8
  %114 = getelementptr inbounds %struct.page, %struct.page* %113, i32 1
  store %struct.page* %114, %struct.page** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %96
  %119 = load i32, i32* %12, align 4
  %120 = icmp ugt i32 %119, 0
  br i1 %120, label %48, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  br label %128

125:                                              ; preds = %121
  %126 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %127 = call %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist* %126)
  store %struct.scatterlist* %127, %struct.scatterlist** %6, align 8
  br label %27

128:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %25
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.crypto_tfm* @crypto_hash_tfm(i32) #1

declare dso_local i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @crypto_kmap(%struct.page*, i32) #1

declare dso_local i32 @crypto_kunmap(i8*, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
