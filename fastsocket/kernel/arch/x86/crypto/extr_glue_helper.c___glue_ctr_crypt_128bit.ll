; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_ctr_crypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_ctr_crypt_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i8*, i32*, i32*, i32*)* }
%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.common_glue_ctx*, %struct.blkcipher_desc*, %struct.blkcipher_walk*)* @__glue_ctr_crypt_128bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__glue_ctr_crypt_128bit(%struct.common_glue_ctx* %0, %struct.blkcipher_desc* %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca %struct.common_glue_ctx*, align 8
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %4, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %5, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %6, align 8
  store i32 16, i32* %7, align 4
  %16 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %17 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @crypto_blkcipher_ctx(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %21 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %24 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %10, align 8
  %29 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %30 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %11, align 8
  %35 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @be128_to_le128(i32* %12, i32* %38)
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %96, %3
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %40
  %47 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = mul i32 16, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %86, %60
  %62 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32 (i8*, i32*, i32*, i32*)*, i32 (i8*, i32*, i32*, i32*)** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 %70(i8* %71, i32* %72, i32* %73, i32* %12)
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %61
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp uge i32 %87, %88
  br i1 %89, label %61, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = icmp ult i32 %91, 16
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %100

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %46
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %40

99:                                               ; preds = %40
  br label %100

100:                                              ; preds = %99, %93
  %101 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %102 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = call i32 @le128_to_be128(i32* %104, i32* %12)
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i8* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @be128_to_le128(i32*, i32*) #1

declare dso_local i32 @le128_to_be128(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
