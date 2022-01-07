; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_xts_crypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_xts_crypt_128bit.c"
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

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.common_glue_ctx*, i8*, %struct.blkcipher_desc*, %struct.blkcipher_walk*)* @__glue_xts_crypt_128bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__glue_xts_crypt_128bit(%struct.common_glue_ctx* %0, i8* %1, %struct.blkcipher_desc* %2, %struct.blkcipher_walk* %3) #0 {
  %5 = alloca %struct.common_glue_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca %struct.blkcipher_walk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.blkcipher_desc* %2, %struct.blkcipher_desc** %7, align 8
  store %struct.blkcipher_walk* %3, %struct.blkcipher_walk** %8, align 8
  store i32 16, i32* %9, align 4
  %16 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %17 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %20 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %11, align 8
  %25 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %26 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %91, %4
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %31
  %38 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = mul i32 16, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %81, %51
  %53 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32 (i8*, i32*, i32*, i32*)*, i32 (i8*, i32*, i32*, i32*)** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %66 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = call i32 %61(i8* %62, i32* %63, i32* %64, i32* %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %52
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp uge i32 %82, %83
  br i1 %84, label %52, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = icmp ult i32 %86, 16
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %95

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %37
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %15, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %31

94:                                               ; preds = %31
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
