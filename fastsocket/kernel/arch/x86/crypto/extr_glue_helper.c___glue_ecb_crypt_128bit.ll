; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_ecb_crypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_ecb_crypt_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i8*, i32*, i32*)* }
%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.common_glue_ctx*, %struct.blkcipher_desc*, %struct.blkcipher_walk*)* @__glue_ecb_crypt_128bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__glue_ecb_crypt_128bit(%struct.common_glue_ctx* %0, %struct.blkcipher_desc* %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca %struct.common_glue_ctx*, align 8
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %4, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %5, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %6, align 8
  %16 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %17 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @crypto_blkcipher_ctx(i32 %18)
  store i8* %19, i8** %7, align 8
  store i32 16, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %21 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %22 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %20, %struct.blkcipher_walk* %21)
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %105, %3
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %110

28:                                               ; preds = %23
  %29 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %30 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  %34 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %35 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %15, align 8
  %39 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @glue_fpu_begin(i32 16, i32 %41, %struct.blkcipher_desc* %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %101, %28
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %46
  %53 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul i32 16, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %91, %65
  %67 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %74, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 %75(i8* %76, i32* %77, i32* %78)
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %14, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %15, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %66
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %66, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = icmp ult i32 %96, 16
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %105

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %52
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %46

104:                                              ; preds = %46
  br label %105

105:                                              ; preds = %104, %98
  %106 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %107 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %106, %struct.blkcipher_walk* %107, i32 %108)
  store i32 %109, i32* %13, align 4
  br label %23

110:                                              ; preds = %23
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @glue_fpu_end(i32 %111)
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local i8* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @glue_fpu_begin(i32, i32, %struct.blkcipher_desc*, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @glue_fpu_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
