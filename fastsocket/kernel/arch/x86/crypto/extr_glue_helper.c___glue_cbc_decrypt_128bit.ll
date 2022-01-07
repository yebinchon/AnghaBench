; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_cbc_decrypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_cbc_decrypt_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i8*, i32*, i32*)* }
%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.common_glue_ctx*, %struct.blkcipher_desc*, %struct.blkcipher_walk*)* @__glue_cbc_decrypt_128bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__glue_cbc_decrypt_128bit(%struct.common_glue_ctx* %0, %struct.blkcipher_desc* %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca %struct.common_glue_ctx*, align 8
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
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
  %16 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %17 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @crypto_blkcipher_ctx(i32 %18)
  store i8* %19, i8** %7, align 8
  store i32 16, i32* %8, align 4
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
  %35 = load i32, i32* %9, align 4
  %36 = udiv i32 %35, 16
  %37 = sub i32 %36, 1
  %38 = load i32*, i32** %10, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = udiv i32 %41, 16
  %43 = sub i32 %42, 1
  %44 = load i32*, i32** %11, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %125, %3
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %49
  %56 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = mul i32 16, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp uge i32 %66, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %115, %69
  %71 = load i32, i32* %14, align 4
  %72 = sub i32 %71, 16
  %73 = load i32, i32* %9, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sub i32 %75, 1
  %77 = load i32*, i32** %10, align 8
  %78 = zext i32 %76 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sub i32 %81, 1
  %83 = load i32*, i32** %11, align 8
  %84 = zext i32 %82 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %11, align 8
  %87 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 %95(i8* %96, i32* %97, i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = sub i32 %100, 16
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ult i32 %102, 16
  br i1 %103, label %104, label %105

104:                                              ; preds = %70
  br label %129

105:                                              ; preds = %70
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 -1
  %110 = call i32 @u128_xor(i32* %106, i32* %107, i32* %109)
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 -1
  store i32* %112, i32** %10, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 -1
  store i32* %114, i32** %11, align 8
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp uge i32 %116, %117
  br i1 %118, label %70, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = icmp ult i32 %120, 16
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %129

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %55
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %49

128:                                              ; preds = %49
  br label %129

129:                                              ; preds = %128, %122, %104
  %130 = load i32*, i32** %11, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %133 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = call i32 @u128_xor(i32* %130, i32* %131, i32* %135)
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %139 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  ret i32 %142
}

declare dso_local i8* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @u128_xor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
